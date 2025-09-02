#import "@preview/leonux:1.1.0": *
#import "@preview/pinit:0.2.2": *
#import "@preview/bob-draw:0.1.1": *
#import "@preview/ccicons:1.0.1": *
#show math.equation: it => {
    if it.body.fields().at("size", default: none) != "display" {
      return math.display(it)
    }
    it
  }
// Setup the format and enter personal information
#show: setup.with(
	ratio: "16-9",
	primary: rgb("141467"), 
	title: "Menhir的原理与使用",
	subtitle: "Ocaml下的Parser生成器",
	date: "August 27, 2025",
 institute: "PLCT Lab",
	author: "李子鸣",
	// institute: "PLCT Lab"
)

 #show regex("\p{sc=Hani}+"):set text(size:0.9em)
#set text(font:("Libertinus Sans","Source Han Sans SC"))
// slide number only counts slide and content,references (both based on slide)

// Create titlepage

#titlepage()
#slide(title:"写在前面")[
听这个的动机？
  - *MonnBit的编译器采用了Menhir作为Parser生成器。*
  - PL学术界也经常用到Menhir，写DSL，Lisp方言等。
#show:later
讲这个的动机？
	- 让人感受到Menhir的好使，拉不用OCaml的入坑
	- *初学者读Menhir手册很搞*：很多设计缘于yacc历史流变，各种特性不同章节互相穿插。希望能有一个循序渐进的视角，讲清楚Menhir各种feature的引入动机。
#show:later
需要什么前置知识?
	- 学过编译原理（如果学校教的不全就看龙书Syntax Analysis章节补课，我可以确保它覆盖所有需要的前置知识）
	- 不需要你会OCaml（这也是为什么不讲错误处理）
]

// #slide[很多人在学校的编译原理都用过Parser 生成器，但是我们为什么不全部手写呢？

// 事实上，也确实有不用Parser 生成器的，比如Zig。]
// #slide(title:"Why Parser Generator? Pros and cons ")[
// 	 #text(size:1.2em)[手写Parser]
// 		- 通常采用递归下降的方式
// 		- #text(fill:red)[开发难度大，耗时，特别是对于复杂文法。]
// 		- #text(fill:red)[依赖开发者自身对文法的理解，无法自动验证文法的正确性。]
// 		- #text(fill:blue)[对整个解析过程拥有完全的控制权，没有外部依赖。]
// #show:later
// 	 #text(size:1.1em)[Parser生成器]
// 		- 在专门的文法文件中定义规则，然后工具会根据这个文法生成解析器代码
// 		- #text(fill:green)[通常高效，可靠，能处理复杂文法，并原生支持左递归。]
// 		- #text(fill:green)[工具能够自动分析并报告文法中的冲突和歧义，提供了形式化的正确性保证。]
// 		- #text(fill:green)[ 将文法定义`*.y`与程序代码分离，使得文法逻辑更清晰、更易于维护。]
// 		- #text(fill:blue)[Trade-off:需要额外的构建步骤并学习一个外部工具]

// ]
// #slide(title:"一些常见Parser 生成器")[
// 	- yacc：最古老，写在龙书上，LALR(1) 算法
// 	- Bison: yacc的drop in replacement，它的指令仍然是`yacc`，LALR(1)算法
// 	- Menhir: LR(1)算法，OCaml
// 	- Happy: Haskell的LR(1)解析器生成器，写出了Agda
// 	- LALRPOP: Rust，同时接管了lexer和parser，LALR(1)算法
// 	- ANTLR: $LL^*$算法跨平台和多语言支持,如 Java、Python、C++、C\#、JavaScript 

// ]
#slide(title:"如何在项目里引入Menhir")[
	dune会默认使用ocamlyacc作为构建系统，所以你需要在dune-project里面添加
	
#align(center)[```
(using menhir 2.1)
```或者```
(menhir
 (modules parser))
```]
前者指定了你的menhir高于等于这个版本号。
]
#slide(title:"What is Menhir")[
		#render(
			```
头部   \                       +-----+
声明    \  +------+  menhir    |.mli |--> OCaml 接口文件
规则     + | .mly | ---------> +-----+
尾部    /  +------+            | .ml |
                               +-----+
			```,
			width:100%
		)
`.mly`中的后缀y意味着yacc，menhir兼容yacc，所以如果你用过Bison之类的可能会很熟悉。

]
#slide(title:"头部")[
头部位于 `%{` 和 `%}` 之间。这里的代码会原样复制到生成的`.ml` 文件中。
通常我们会在头部写一些`open`，比如：
#align(center)[```
%{
open Ast	
%}
```]
稍后在文法定义中，我们可以写 Int i 这样的表达式，而不是 Ast.Int i。

如果需要，我们也可以在头部定义一些 OCaml 函数。
]
#slide(title:"声明")[
	声明部分干三件事：#text(fill:red)[1.定义tokens、2.运算符优先级和结合性，3. 解析起始点。]

  声明部分和规则部分必须用%%隔开，这说明声明语句和规则语句是不能混着来的。

  从CFG的角度来讲，$cases("%token"->"终结符","%start"->"开始变量")$
  
#render(```
%token <int> INT                                       %nonassoc IN
%token TIMES                                           %nonassoc ELSE
%token PLUS                                            %left LEQ
%token LPAREN      -------> 这些都是lexer生成的token   %left PLUS
%token RPAREN                                          %left times
%token EOF       
 ```)


需要声明语言解析的起点。以下声明表示从名为 prog 的规则（在下面定义）开始。该声明还表示解析一个 prog 将返回一个类型为 Ast.expr 的 OCaml 值。
```
%start <Ast.expr> prog
```
]

#slide(title:"声明：类型")[
	```mly
	expr:
  | INT { $1 }
  | STRING { $1 } 
  | expr; PLUS; expr { $1 + $3 } 
	```
#absolute-place(dx:200pt,dy:160pt)[expr可能是个int也可能是个string]
#show:later
#absolute-place(dx:300pt,dy:190pt)[这里存在一个string+int的类型错误风险]
#show:later
	Menhir 自身无法察觉这个错误。你会在 OCaml 编译阶段通过类型推断得到一个来自生成文件 parser.ml 的错误：
	```
	File "parser.ml", line 123, char 45-50:
	Error: This expression has type string but an expression was expected of type int
	```
#show:later
	自动生成的`.ml`可读性差，在上面排错很烦。
#show:later
	要是类型错误来自`.mly`该多好，直接在上面排错！

	不难想到：#text(fill:purple)[*让`.mly`类型化！从`.mly`转化成`.ml`时就进行类型检查。*]
#show:later

]
#slide(title:"声明：类型")[
	
	- *对于终结符*，我们通过在token前面用尖括号包住Ocaml类型加上类型声明。

	#align(center)[```
	%token <Ocaml type> lid
	```]

	- *对于非终结符*，我们额外开行写%type声明：

	#align(center)[
	```
	%type <OCaml type> lid1 ... lidn
	```]

	为`lid1,..., lidn`中的每一个都指定了一个 OCaml 类型。
]
#slide(title:"规则：旧语法")[
声明帮我们解决了CFG的终结符和开始变量，那么规则肯定处理的则是非终结符。
```mly
rulename:     
  | expr SEMICOLON  { $1 }
  | production2 { action2 }
  | ...

rulename2:
  |
...
%%
```
#show:later
#absolute-place(dx:80pt,dy:200pt)[#line(length:200pt)]
#absolute-place(dx:270pt,dy:210pt)[被|分割开的是一个production group，由一个production和包在花括号里的action构成。\ production是我们语法所匹配的模式。]
#show:later
#absolute-place(dx:320pt,dy:144pt)[
#pin(1)action是如果匹配成功，返回的OCaml值。
action里面的\$1是第一个token的\
值的意思，同理，我们还可以使用\$2, \$3。]
#pinit-line-to(1,pin-dx:-75pt,pin-dy:50pt,offset-dx:0pt,offset-dy:10pt)[]
把production group的action扔掉，留下的就是production，由一系列producer构成，producer在这里你就简单的理解为终结符和非终结符，下一张幻灯片会修正你的理解。
]



#slide(title:"规则：值的绑定")[
	用\$1和\$2是yacc的传统方式，*可读性差*:
  #align(center)[```OCaml
  expr: INT PLUS INT { $1 + $3 }
	```]
#show:later
	Menhir提供了类似Bison中命名引用的手段，就是值绑定。我们在INT前面加一个i1，这样就把此处INT接收到的值绑定到了i1上，在action里你直接调用i1就可以了。

	#align(center)[```OCaml
	expr: i1=INT PLUS i2=INT { i1 + i2 }
	```]

  Menhir的手册里把终结符和非终结符都称作actual。现在我们知道，producer并不一定都是actual，也可以是actual前跟一个值绑定。

#show:later
	在Menhir的旧语法里，每一个producer后面可跟分号也可不跟。也就是说，这样的语法和上面等效：
	
	#align(center)[```OCaml
	expr: i1=INT; PLUS; i2=INT { i1 + i2 }
	```]
	
]
#slide(title:"规则：参数化语法")[
#grid(
  columns: (0.5fr,0.5fr),
  gutter: 1cm, // 列之间的间距
[```
int_list:
    int
  | int_list ',' int

string_list:
    string
  | string_list ',' string
```
#show: later
代码重用，维护负担大\
#show:later
*我用过Bison，我晓得，用`#define`解决！* 
#show: later

Wait!
	- 类型不安全
	- 大量隐式逻辑，增加调试难度，错误信息不好理解
	- 宏的语法怪，可读性差，也不是特别好写
],
  [
	#show: later
解决方案：*融入函数/泛型的思路*。
```
list(item): item
            | list(item) ',' item
						
int_list: list(INT)
string_list: list(STRING)
```
#show:later
*代码一下子更简洁了。*

#show:later
*而且这是类型安全的!* 在Menhir中，一个 %type 声明不仅可以针对单个非终结符，也可以针对一个完全应用的参数化非终结符，比如`list(expression)` 。

#show:later
- 参数化语法是Menhir区别于普通Parser生成器的首要核心优势。😎

]
)
]
#slide(title:"规则：inline")[
#show: columns
```mly
expression:
| e = expr; o = op; f = expr { o e f }
op:
| PLUS { ( + ) }
| TIMES { ( * ) }
```

这种情况下，当一个类似`1+2*3`的移入/归约冲突发生后，parser会想着通过优先级来解决。

#show:later
但是，parser只会去找op的优先级，它不会去找op具体是什么的优先级。*op相当于添加了一个抽象层，屏蔽掉了内部的信息。*

#show:later
手动解决的办法是放弃 op 这个非终结符，直接把它包含的 PLUS 和 TIMES 规则写到 expr 规则里。
```mly
expr:
  e = expr; PLUS; f = expr { e + f }
| e = expr; TIMES; f = expr { e * f }
```
#show:later
*我们既想要优先级，又想要抽象成op带来的可读性*，OCaml给我们了inline（内联）作为解决方案。
```mly
%inline op:
| PLUS { ( + ) }
| TIMES { ( * ) }

expr:
| e = expr; o = op; f = expr { o e f }
```

inline 的作用就是自动完成前面提到的的手动转换过程。当你给 op 规则加上 %inline 关键字时，Menhir 会在生成parser前，把所有对 op 的引用替换成它自己的定义。最终生成的parser代码就等同于手动解决后的文法。

]
#slide(title:"规则：新语法")[
#show: columns
在其最简单的形式中，一条规则为
```Ocaml
let lid := expression
```
其左侧 lid 是一个非终结符；其右侧是一个表达式。这种规则定义了一个普通的非终结符，

另一种形式
```Ocaml
let lid == expression
```
定义了一个 %inline 非终结符。

- 和OCaml风格更统一
- 将inline和普通规则归类，提高可读性
*新语法中，每一个producer之间必须有分号。*
#colbreak()
#show: later
新语法还提供了一些很方便的糖：
- 尖括号语法
		- < id > ：尖括号里面是一个函数或者构造子，产生的动作是把所有前面绑定了的值传入其中。
		- <>：等价于`<identity>`，自动返回一个包含所有绑定变量的元组。
- 双关语法糖：`~ = id1` 是一种更简洁的写法，等效于`id1 = id1`，表示将值绑回一个同名变量。

假设你想把一个解析后的列表反转。你可以写成：
```
my_list := elements = ID+ ; < List.rev >
```
这会自动调用 List.rev 函数，并传入 elements 变量。
#show:later
	
	
]
#slide(title:"规则：标准库")[
#show:columns
+ `option(X)` ，或 `X?`\
  用来识别一个可选的语法元素。\
  如果匹配到 X，返回 Some x（ x 是 X 的语义值）。\
  如果匹配空字符串，返回 None。\
   e.g.：`COLON; INT?` 识别一个可选的整数类型注释，如`: int` 或Nothing。

+ `nonempty_list(X)` 或 `X+`\
    用来识别由一个或多个符号 X 组成的非空序列。\
    匹配一个或多个连续的 X 符号，返回一个由所有 X 语义值组成的列表。\
    e.g.：`ID+` 识别一个或多个连续的标识符，如 `foo bar baz`。

+ `list(X)` 或 `X*`\
		识别一个由零个或多个符号 X 组成的序列。\
    匹配零个或多个连续的 X 符号。返回一个由所有 X 语义值组成的列表。\
    e.g.：ID\* 识别一个或多个标识符，或者Nothing。

+ `separated_nonempty_list(sep, X)`\
    识别由一个或多个 X 组成的序列，用 sep 分隔。\
    识别模式为`X sep X sep X ...`，返回一个由所有 X 语义值组成的列表。\
    e.g.：separated_nonempty_list(COMMA, expression) 识别如 1, 2, 3 这样的表达式列表。

+ `delimited(opening, X, closing)`\
		用于识别被 opening 和 closing 符号包围的 X。\
    识别模式为`opening X closing`，返回 X 语义值。\
    e.g.: `delimited(LPAREN, expression, RPAREN)` 识别一个被括号包围的表达式，如 `(1 + 2)`。
更多：https://gitlab.inria.fr/fpottier/menhir/blob/master/src/standard.mly
]
#slide(title:"规则：多文件")[

  你可能会想要把规则定义在多个不同的文件里，方便管理，组织起来也更层级。

	如果你在`fileA.mly`中定义了一个非终结符 N，它默认是私有的，不能在`file_B.mly`中被引用。如果两个文件意外地定义了同名的私有非终结符，Menhir 会自动重命名它们以避免冲突。

	如果你想让一个非终结符 N 能在其他模块中被引用，你必须在它的定义前加上 %public 关键字。

	#show:later
	一个公有非终结符的定义甚至可以跨越多个文件。Menhir 会将所有同名公有非终结符的定义用`|`操作符连接起来，形成一个完整的规则。例如，你可以将`expression` 规则的不同分支分散到多个模块中。

 #render(
  ```
  +---------------------------------------+     +-----------------------------------------------+
  |           fileA.mly                   |     |                  fileB.mly                    |
  | expression：expression PLUS expression|     |     expression：expression TIMES expression   |     
  ```
)

	每个文件在被 Menhir 合并处理时，都需要保证其局部上下文是完整的。这意味着，一个文件里用到的所有终结符（tokens），都必须在它自己的声明区（即 %% 之前）定义好。
]
#slide(title:"尾部")[
尾部是可选的，你需要尾部的话就在规则区后面加上%%，然后后面就是尾部。

尾部的内容和头部一样，都是直接复制进`.ml`文件的代码。
]
#ccicon("cc-zero-shield",scale:10)

本作品已根据 CC0 1.0 通用协议贡献至公共领域。

除非法律另有规定，本作品的创作者已在法律允许的最大范围内，放弃对本作品的所有著作权及相关权利，并将其贡献给全球公共领域。您可以在无需任何许可的情况下，自由地复制、修改、分发和表演本作品，包括用于商业目的。

欲了解详情，请访问：https://creativecommons.org/publicdomain/zero/1.0/

本幻灯片由Typst制作，通常在您得到此pdf的地方也随之包含其源代码，如果没有，电邮至 i\@dzming.li
