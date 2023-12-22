# PLCT-Open-Reports

PLCT实验室的公开演讲，或者决定公开的组内报告

## 报告的索引：

---------------------------------------------
|日期|报告人|题目|slides|video|备注|
|----|----|----|----|----|----|
| date | author | title |[slides]() | [links]()| 请按照时间倒序插入把最新鲜的放在表头 |
| 20230929 | 郑昱笙 | bpftime: eBPF 用户态运行时和高速 Uprobe | [slides](slides/20230929-yunwei-bpftime-userspace-ebpf.pdf) | [video](https://www.bilibili.com/video/BV1rB4y1Z7WW) | 用户态 eBPF 运行时 bpftime，支持 Uprobe 和 Syscall hook，和内核兼容并且 Uprobe 快 10 倍 |
| 20230419 | dram | 开一个函数栈帧不可能那么难吧 | [slides](slides/20230419-dram-%E5%BC%80%E4%B8%80%E4%B8%AA%E5%87%BD%E6%95%B0%E6%A0%88%E5%B8%A7%E4%B8%8D%E5%8F%AF%E8%83%BD%E9%82%A3%E4%B9%88%E9%9A%BE%E5%90%A7.pdf) | [video](https://www.bilibili.com/video/BV1Q24y1N7kC) | 从汇编入手的 RISC-V ELF ABI 栈帧结构介绍 |
| 20230308 | 于桐 | WebAssembly组件与模块 | [slides](slides/20230308-WebAssembly%E7%BB%84%E4%BB%B6%E4%B8%8E%E6%A8%A1%E5%9D%97.pdf) | [video](https://www.bilibili.com/video/BV1mY4y1y7en) | 介绍 Wasm 组件模型与模块架构及其相关的衍生产物 |
| 20230308 | 龙英池 | 现代体系结构自动向量化方法 | [slides](https://github.com/inclyc/auto-vec-for-modern/) | [video](https://www.bilibili.com/video/BV1ZM4y1k7NV/) | N/A |
| 20230119 | 于桐 | eBPF简介与开发框架 | [slides](slides/20230118-ebpf%E7%AE%80%E4%BB%8B%E5%8F%8A%E5%BC%80%E5%8F%91%E6%A1%86%E6%9E%B6.pdf) | [video](https://www.bilibili.com/video/BV1NM411t7Z4/) | 简要介绍eBPF及其常用的开发手段和框架 |
| 20220119 | 刘子康 | LLVM-compiler rt简介 | [slides](slides/20220119-%E5%88%98%E5%AD%90%E5%BA%B7-LLVM-rt%E7%AE%80%E4%BB%8B.pdf) | [video](https://www.bilibili.com/video/BV1yq4y1k7b8) | 主要介绍Compiler rt的功能和现状 |
| 20220112 | 郑鈜壬 | CanoKey 应用、代码与实现 | [slides](slides/20220112-%E9%83%91%E9%88%9C%E5%A3%AC-canokey.pdf) | [video](https://www.bilibili.com/video/BV1BF411v7qt) | CanoKey 应用与实例，CanoKey 协议栈与代码组织 |
| 20211224 | 杨帆 | Cache-Coherence-in-Gem5 | [slides](slides/20211224-%E6%9D%A8%E5%B8%86-CC-in-gem5.pdf) | [video](https://www.bilibili.com/video/BV1NS4y1M7Je) | 介绍了gem5中一个经典的缓存一致性系统例子，“classic cache”设计中的问题，ruby介绍 |
| 20211222 | 乌鑫龙 | GP Relaxation in LLD | [slides](slides/20211222-%E4%B9%8C%E9%91%AB%E9%BE%99-GP-Relaxation-in-LLD.pdf) | [video](https://www.bilibili.com/video/BV1gi4y1R7W5) | 介绍RISCV中GP relaxation的基本原理，实现一个简单的GP relaxation的指令优化 |
| 20211218 | 汪辰 | OSDT2021 AOSP for RISC-V 社区开源进展报告 | [slides](slides/20211218-osdt2021-aosp-rv-wangchen.pdf) | [video](https://www.bilibili.com/video/BV1Sg411w7Le) | AOSP for RISC-V 社区开源进展报告 |
| 20211211 | 罗云千 | RISC-V向量指令集初探 | [slides](slides/20211211-rvv.pdf) | [video](https://www.bilibili.com/video/BV1Zg411w7H2) | 介绍 RISC-V Vector 扩展的指令设计 |
| 20211208 | 史历 | Register Allocation in LLVM | [slides](slides/20211208-%E5%8F%B2%E5%8E%86-Register-Allocation-in-LLVM.pdf) | [video](https://www.bilibili.com/video/BV1pF411z7Ry) | WLLVM 后端寄存器分配算法及其实现（Basic 与 Greedy 寄存器分配器) |
| 20211024 | 汪辰，陆旭凡 | 2021 AOSP RISC-V 社区开源进展报告(OSDT Meetup) | [slides1](./20211024-aosp-rv-community-status-report-wangchen.pdf) [slides2](./20211024-aosp-riscv-toolchain-luxufan.pdf) | [video](https://www.bilibili.com/video/BV1QF411e7sZ) | Wallace 乘法乘法器的原理以及如何使用 Booth Recoding 加速 Wallace 乘法器 |
| 20211025 | 张洪滨 | MLIR 的简介、实践、思考 | [slides](slides/20211025-MLIR%E7%9A%84%E7%AE%80%E4%BB%8B-%E5%AE%9E%E8%B7%B5-%E6%80%9D%E8%80%83-zhanghongbin.pdf) | - | N/A |
| 20211011 | 罗云千 | Wallace 乘法器 | [slides](slides/20211011-%E7%BD%97%E4%BA%91%E5%8D%83-wallace.pdf) | [video](https://www.bilibili.com/video/BV17h411n7cD) | Wallace 乘法乘法器的原理以及如何使用 Booth Recoding 加速 Wallace 乘法器 |
| 20210929 | 刘子康 | TableGen入门与实战 | [slides](slides/20210929-%E5%88%98%E5%AD%90%E5%BA%B7-TableGen%E5%85%A5%E9%97%A8%E4%B8%8E%E5%AE%9E%E6%88%98.pdf) | [video](https://www.bilibili.com/video/BV1Tr4y127EH) | 简要介绍LLVM中TableGen的语法特性和用法用途 |
| 20210927 | 罗云千 | Prefix Adder 入门 | [slides](slides/20210927-%E7%BD%97%E4%BA%91%E5%8D%83-prefix-adder.pdf) | [video](https://www.bilibili.com/video/BV17b4y1Y7dX) | Prefix Adder 的原理介绍以及其 Chisel 实现 |
| 20210915 | 章翔 | JVM从入门到入门(三) | - | [video](https://www.bilibili.com/video/BV1wL4y187ZX) | 关于JVM学习的入门知识分享 |
| 20210823 | 东东 | archbuild脚本解读 - 东东拷问现场 - Arch Linux 小队 | [slides](https://docs.google.com/presentation/d/1lHZ9U-mrNWkTWubFfzpQshYmdzgJaIHg-Kgg__P0Mnw/edit#slide=id.p1) | [video](https://www.bilibili.com/video/BV1aL411b7XC) | archbuild脚本解读-在 Arch Linux x86_64 环境中构建 RISC-V 架构的软件包 |
| 20210811 | 章翔 | JVM从入门到入门(二) | [slides](slides/20210811-JVM%E4%BB%8E%E5%85%A5%E9%97%A8%E5%88%B0%E5%85%A5%E9%97%A8%EF%BC%88%E4%BA%8C%EF%BC%89-%E7%AB%A0%E7%BF%94.pdf) | [video](https://www.bilibili.com/video/BV1Rf4y1V7qn) | 关于JVM学习的入门知识分享之JVM的启动流程介绍 |
| 20210730 | 许东 | 在 arch linux 上搭建 RISC-V 轻量级用户模式开发环境 | [slides](slides/20210730-%E5%9C%A8arch%20linux%E4%B8%8A%E6%90%AD%E5%BB%BARISC-V%E8%BD%BB%E9%87%8F%E7%BA%A7%E7%94%A8%E6%88%B7%E6%A8%A1%E5%BC%8F%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83-%E8%AE%B8%E4%B8%9C.pdf) | [video](https://www.bilibili.com/video/BV1Vg41177MQ) | 在arch linux 上使用 QEMU 和 systemd nspawn 搭建 RISC V 轻量级用户模式开发环境 |
| 20210728 | 邵世通 | shecc介绍 | [slides](slides/20210728-%E9%82%B5%E4%B8%96%E9%80%9A-shecc-introdution.pdf) | [video](https://www.bilibili.com/video/BV1Vo4y1Q7B2) | shecc编译流程介绍，qemu仿真模拟器原理介绍，Makefile文件介绍 |
| 20210630 | 章翔 | JVM从入门到入门(一) | [slides](slides/20210811-JVM%E4%BB%8E%E5%85%A5%E9%97%A8%E5%88%B0%E5%85%A5%E9%97%A8%EF%BC%88%E4%B8%80%EF%BC%89-%E7%AB%A0%E7%BF%94.pdf) | [video](https://www.bilibili.com/video/BV1yL411W7PR) | 关于JVM学习的入门知识分享 |
| 20210626 | 王翔 | Introduce RISC-V debugging、OpenOCD and OpenSBI | [slides1](20210626-王翔-Introduce_RISC-V_debugging_and_openocd.pdf) [slides2](20210626-王翔-opensbi_source_code_analysis.pdf)| - | 介绍 OpenOCD 和 OpenSBI |
| 20210626 | 汪辰 | 年轻人的第一个RISC-V 操作系统 | [slides](slides/20210626-wangchen-first-riscv-os-for-young-people.pdf) | [video](https://www.bilibili.com/video/BV1mv411J7T5?p=2) | 介绍 PLCT 开设的基于 RISC-V 的操作系统线下公开课情况 |
| 20210626 | 廖春玉 | LLVM的RVV支持现状和经验 | [slides](slides/20210626-廖春玉-LLVM的RISCV支持现状和经验.pdf) | - | 介绍RVV在LLVM上的支持情况 |
| 20210626 | 陈小欧 | RISCV GNU Toolchain和LLVM回归测试的介绍 | [slides](slides/20210626-陈小欧-GNU-Toolchain和LLVM回归测试框架和测试流程的介绍.pdf) | - | N/A |
| 20210626 | 张洪滨 | MLIR 向量支持的部分概述 | [slides](slides/20210626-张洪滨-MLIR向量简述.pdf) | - | N/A |
| 20210626 | 陆亚涵 | V8 for RISC-V: Working Toward a Tier-1 Platform | [slides](slides/20210626-陆亚涵-RV-Forum-V8-report-20210601qja.pdf) | - | 介绍V8在RISCV上的移植情况 |
| 20210626 | 张定立 | 关于「在 RISC-V 峰会召开前将 OpenJDK 移植到 RV32GC 」结果却没有赶上 Deadline 这件事 | [slides](slides/20210626-张定立-将OpenJDK移植到RV32GC.pdf) | - | 介绍OpenJDK在RV32GC上的移植情况 |
| 20210626 | 史宁宁 | 方舟、ART和OpenJDK的RISCV支持 | [slides](slides/20210626-史宁宁-方舟、ART和OpenJDK的RISCV支持.pdf) | - | 讲述PLCT实验室在方舟编译器、ART和OpenJDK上的工作 |
| 20210626 | 吴伟 | 我们仍未知道那些年立过的FLAG数量 —— PLCT 2021 Roadmap 回顾 | [slides](slides/20210626-吴伟-PLCT-2021-Roadmap-回顾.pdf) | - | 回顾PLCT实验室在2021年上半年的工作 |
| 20210526 | 陈嘉炜 | lazy binding on RISCV | [slides](slides/20210526--lazy%20binding%20on%20RISCV%E9%99%88%E5%98%89%E7%82%9C.pdf) | [video](https://www.bilibili.com/video/BV1QU4y1t7GQ) | 介绍lazy binding的概念及其在RISC-V中的调用约定 |
| 20210520 | 刘铮 | 入职报告：Ignition解释器工作过程 | [slides](slides/20210520-Ignition-work-process-ppt.pdf) | [video](https://www.bilibili.com/video/BV1LB4y1u7H1) | 介绍Ignition解释器如何生成字节码，解释执行字节码，收集反馈信息 |
| 20210512 | 陈小欧 | Perf更详细的介绍 | [slides](slides/20210512-%E5%B8%B8%E7%94%A8perf%E5%91%BD%E4%BB%A4%E8%AF%A6%E8%A7%A3-%E9%99%88%E5%B0%8F%E6%AC%A7.pdf) | [video](https://www.bilibili.com/video/BV1hK4y1A7U4) | Perf更详细的介绍，更多介绍了常用的参数 |
| 20210512 | 陈嘉炜 | 添加Zce指令到RISCV-GNU-Toolchain | [slides](slides/20210512-%E6%B7%BB%E5%8A%A0Zce%E6%8C%87%E4%BB%A4%E5%88%B0RISCV-GNU-Toolchain-%20%E9%99%88%E5%98%89%E7%82%9C.pdf) | [video](https://www.bilibili.com/video/BV1QU4y1t7GQ) | 介绍添加ISA ZCE中的指令到RISC-V GNU Toolchain中的方法 |
| 20210331 | 陈小欧 | 如何使用gcov和linux-perf工具抓热点代码 | [slides](slides/20210331-%E5%A6%82%E4%BD%95%E4%BD%BF%E7%94%A8gcov%E5%92%8Clinux-perf%E5%B7%A5%E5%85%B7%E6%8A%93%E7%83%AD%E7%82%B9%E4%BB%A3%E7%A0%81-%E9%99%88%E5%B0%8F%E6%AC%A7.pdf) | [video](https://www.bilibili.com/video/BV1MK4y1m7Uj) | N/A |
| 20210328 | 吴思宇 | RISC-V K 扩展功能介绍 | [slides](slides/20210328-RISC-V_K_%E6%89%A9%E5%B1%95%E5%8A%9F%E8%83%BD%E4%BB%8B%E7%BB%8Dslide.pdf) | [video](https://www.bilibili.com/video/BV1rf4y1x7So) | RISC-V K 扩展功能和相关加密算法的介绍 |
| 20210324 | 车春池 | RISC-V and Rust and Embedded | [slides](slides/20210324-riscv-Rust-embedded.pdf) | [video](https://www.bilibili.com/video/BV1cK4y1M7cY) | 浅谈 RISC-V 与 Rust 语言与嵌入式开发 |
| 20210310 | 陈小欧 | GNU GCC Testsuite | [slides](slides/20210310-GNU-GCC-Testsuite-chenxiaoou.pdf) | [video](https://www.bilibili.com/video/BV1EV411Y7Ne) | GNU GCC Testsuite介绍和运行方法 |
| 20210310 | 乌鑫龙 | Progress of Scalar Crypto Support on LLVM | [slides](slides/20210310-Progress%20of%20Scalar%20Crypto%20Support%20on%20QEMU.pdf) | [video](https://www.bilibili.com/video/BV16Z4y1P72b) | LLVM 对于 RISCV K扩展的支持进展 |
| 20210310 | Lucas Zewen Ye | Progress of Scalar Crypto Support on QEMU |[slides](slides/20210310-Progress%20of%20Scalar%20Crypto%20Support%20on%20QEMU.pdf)| [video](https://www.bilibili.com/video/BV13p4y1h7cR) | Progress of K-ext Support on QEMU |
| 20210224 | 卢睿博 | Code Analysis Of RISC‐V P extensions in QEMU | [slides](slides/20210224-Code%20Analysis%20Of%20RVP-LuRuibo.pdf) | [video](https://www.bilibili.com/video/BV11h411r74j) | 基于QEMU中已提交的P扩展patch进行代码分析和介绍 |
| 20210129 | 吴思宇 | RISC-V B扩展(Bitmanip)概述 | [slides](slides/20210129-RISC-V%20B%E6%89%A9%E5%B1%95(Bitmanip)%E6%A6%82%E8%BF%B0-SiYu%20Wu.pdf) | [video]([https://www.bilibili.com/video/BV155411J7gY)) | RISC-V B扩展(Bitmanip)概述，包括一些指令和支持情况 |
| 20210129 | 叶泽文 | RISC-V Crypto Extension | [slides](slides/20210129-RISC-V-Crypto-Extension-Lucas.pdf) | [video](https://www.bilibili.com/video/BV15X4y1N7t8) | 简单介绍RISC-V K扩展 |
| 20210127 | 梁斌 | Debugging WebAssembly with modern tools | [slides](slides/20210127-Debugging-WebAssembly-with-modern-tools-%E6%A2%81%E6%96%8C.pdf) | [video](https://www.bilibili.com/video/BV16T4y1P7iJ) | 介绍谷歌目前对WASM的debug方法与改进 |
| 20210127 | 姜宇辰 | WASM Compilation Pipeline | [slides](slides/20210127-WebAssembly-Compilation-Pipeline-JiangYuchen-slides.pdf) | [video](https://www.bilibili.com/video/BV19o4y1R71F) | 介绍V8编译WASM的流程并分析Liftoff编译器源码 |
| 20210122 | 林思南 | An introduction to RISC-V ABI | [slides](slides/20210122-an-intro-to-RISCV-ABI-linsinan.pptx) | [video](https://www.bilibili.com/video/BV1bz4y1S71o) | 对RISC-V psABI中的规范进行介绍和分析 |
| 20210120 | 卢睿博 | Implementation Framework And Present Support Analysis Of Gem5 | [slides](slides/20210120-Gem5-LuRuibo.pdf) | [video](https://www.bilibili.com/video/BV155411J7gY) | gem5 实现框架分析和对 RISC‐V 支持现状 |
| 20210113 | 陈小欧 | Comparison Between Csmith and YarpGen | [slides](slides/20210113-Comparison-Between-Csmith-and-YarpGen-ChenXiaoou.pdf) | [video](https://www.bilibili.com/video/BV1rt4y1z7h4) | 对比随机自动化测试工具Csmith和YARPGen |
| 20210113 | 梁斌 | How to debug V8 学习报告 | [slides](slides/20210113-How-to-debug-V8-%E6%A2%81%E6%96%8C.pdf) | [video](https://www.bilibili.com/video/BV1jU4y147eD) | N/A |
| 20210113 | 邢明杰 | 深度学习DSL简介 | [slides](slides/20210113-DeepDSL-xmj.pdf) | [video](https://www.bilibili.com/video/BV1oy4y1H76T) | N/A |
| 20210113 | 姜宇辰 | A Brief Introduction to WebAssembly & WAMR | [slides](slides/20210113-A-Brief-Introduction-to-WebAssembly(WASM)-and-WAMR-JiangYuchen.pdf) | [video](https://www.bilibili.com/video/BV14f4y1k7ax) | Webassembly介绍和WAMR源码分析 |
| 20210106 | 乌鑫龙 | Rpitifulvm源码分析 | [slides](slides/20210106-pitifulvm-%E4%B9%8C%E9%91%AB%E9%BE%99.pdf) | [video](https://www.bilibili.com/video/BV1vp4y1s7fs) | N/A |
| 20201224 | 陈嘉炜 | RISCV-SIG社区工作进展、Zfinx进展 | [slides](./RISCV-SIG%E7%A4%BE%E5%8C%BA%E5%B7%A5%E4%BD%9C%E8%BF%9B%E5%B1%95%E3%80%81Zfinx%E8%BF%9B%E5%B1%95.pptx) | - | Code Speed SIG项目内容与进展，Codesize Reduction中Zfinx项目工作进展 |
| 20201218 | 陈嘉炜 | ZFINX GDB Disassembly | [slides](./ZFINX%20GDB%20Disassembly.pptx) | [video](https://www.bilibili.com/video/BV1AT4y1u7ys) | 介绍反汇编的框架，和ZFINX反汇编实现工作的有关类容 |
| 20201204 | 陈小欧 | LLVM测试框架介绍 | [slides](slides/20201204-LLVM%E6%B5%8B%E8%AF%95%E6%A1%86%E6%9E%B6%E4%BB%8B%E7%BB%8D-%E9%99%88%E5%B0%8F%E6%AC%A7.pdf) | [video](https://www.bilibili.com/video/BV1MK4y1L7jw) | LLVM测试框架介绍以及如何写一个测试用例 |
| 20201118 | 段甲华 | Implementation analysis of RISC-V Zfinx extension in QEMU | [slides](./ImplementationanalysisofRISC-VZfinxextensioninQEMU.pptx) | [video](https://www.bilibili.com/video/BV1Sa4y1p7nF) | QEMU的代码转换分析与RISC-V的Zfinx扩展在QEMU中的实现分析 |
| 20201120 | 陈嘉炜 | Porting ZFINX support On RISC-V GNU ToolChain | [slides](./Porting%20ZFINX%20support%20On%20RISC-V%20GNU%20ToolChain.pptx) | [video1](https://www.bilibili.com/video/BV1iz4y1y7Xe?p=2) [video2](https://www.bilibili.com/video/BV1A54y1k7q3) | 介绍GCC和Binutils中的移植操作与测试 |
| 20201111 | 陈嘉炜 | ZFINX WORKING IN GCC AND BINUTILS | [slides](./ZFINX%20work%20s%20in%20GCC%20and%20Binutils.pptx) | [video](https://www.bilibili.com/video/BV11a4y1s7uG) | 介绍在GCC与Binutils中添加riscv-zfinx扩展的工作 |
| 20201111 | 王萌 | USB驱动框架及R T-Thread的USB host实现分析 | [slides](slides/20201111-USB%E9%A9%B1%E5%8A%A8%E6%A1%86%E6%9E%B6%E5%8F%8ARTT-%E7%8E%8B%E8%90%8C.pdf) | [video](https://www.bilibili.com/video/BV1oy4y1B7B1) | N/A |
| 20201106 | 陈嘉炜 | 指令选择 | [slides](./PLCT%E7%BC%96%E8%AF%91%E5%99%A8%E8%AE%BE%E8%AE%A1%E8%AE%A8%E8%AE%BA%E7%8F%AD(2020%E7%A7%8B)%20%E7%AC%AC06%E6%AC%A1%E8%AE%A8%E8%AE%BA%EF%BC%9A%E6%8C%87%E4%BB%A4%E9%80%89%E6%8B%A9_%E9%99%88%E5%98%89%E7%82%9C%20-%20%E5%89%AF%E6%9C%AC%20(1).pptx) | [video](https://www.bilibili.com/video/BV1Tz4y1y7Ng?p=3) | 介绍编译器指令选择的概念和riscv-zfinx扩展 |
| 20201030 | 陈嘉炜 | 编译器优化简介 | [slides](./PLCT%E7%BC%96%E8%AF%91%E5%99%A8%E8%AE%BE%E8%AE%A1%E8%AE%A8%E8%AE%BA%E7%8F%AD(2020%E7%A7%8B)%20%E7%AC%AC04%E6%AC%A1%E8%AE%A8%E8%AE%BA%EF%BC%9A%E4%BC%98%E5%8C%96_%E9%99%88%E5%98%89%E7%82%9C.pptx) | [video](https://www.bilibili.com/video/BV1Qt4y1Y7yc?p=2) | 介绍编译器优化的概念和一些基本优化示例 |
| 20201029 | 陆亚涵 | 对分析V8 riscv和mips的指令数量 | [slides](slides/20201029-%E5%AF%B9%E5%88%86%E6%9E%90V8%20riscv%E5%92%8Cmips%E7%9A%84%E6%8C%87%E4%BB%A4%E6%95%B0%E9%87%8F-%E9%99%86%E4%BA%9A%E6%B6%B5.pdf) | - | N/A |
| 20201021 | 陈嘉炜 | RISC-V GNU Toolchain构建 | [slides](slides/20201021-RISC-V%20GNU%20Toolchain%E6%9E%84%E5%BB%BA-%E9%99%88%E5%98%89%E7%82%9C.pptx) | [video](https://www.bilibili.com/video/BV1Ap4y1k7UY) | RISC-V GNU Toolchain项目内容简介，仓库版本介绍，构建选择方法，交叉编译选择 |
| 20201015 | 吴伟 | RISC-V开源软件生态 | [slides](slides/20201015-RISCV-Software-Ecosystem.pdf) | - | 在 IC China 2020 的 RISC-V 分论坛中介绍 RISC-V 的开源软件社区 |
| 20201014 | 孙少策 | 成为LLVM的贡献者 | [slides](slides/20201014-%E6%88%90%E4%B8%BALLVM%E7%9A%84%E8%B4%A1%E7%8C%AE%E8%80%85-%E5%AD%99%E5%B0%91%E7%AD%96.pdf) | [video](https://www.bilibili.com/video/BV1Vz4y1o7Yv) | 介绍如何成为LLVM贡献者的流程 |
| 20200923 | 陈嘉炜 | Google_XLS项目简介 | [slides](slides/20200923-Google%20XLS%E9%A1%B9%E7%9B%AE%E7%AE%80%E4%BB%8B-%E9%99%88%E5%98%89%E7%82%9C.pptx) | [links](https://www.zhihu.com/column/c_1289607169214820352) | Google XLS项目简介，语法优化介绍 |
| 20200912 | 孙少策 | Kaleidoscope语言代码解释（第八期） | [slides](slides/20200905-Kaleidoscope%EF%BC%88%E7%AC%AC%E5%85%AB%E6%9C%9F%EF%BC%89-%E5%AD%99%E5%B0%91%E7%AD%96.pdf) | [video](https://www.bilibili.com/video/BV1mp4y1e7JN/)| Kaleidoscope 相关的代码解释 |
| 20200905 | 孙少策 | Kaleidoscope语言代码解释（第七期） | [slides](slides/20200905-Kaleidoscope%EF%BC%88%E7%AC%AC%E4%B8%83%E6%9C%9F%EF%BC%89-%E5%AD%99%E5%B0%91%E7%AD%96.pdf) | [video](https://www.bilibili.com/video/BV15D4y1m7E9)| Kaleidoscope 相关的代码解释 |
| 20200905 | 孙少策 | Kaleidoscope语言代码解释（第六期） | [slides](slides/20200905-Kaleidoscope%EF%BC%88%E7%AC%AC%E5%85%AD%E6%9C%9F%EF%BC%89-%E5%AD%99%E5%B0%91%E7%AD%96.pdf) | [video](https://www.bilibili.com/video/BV1Qv411y7ad)| Kaleidoscope 相关的代码解释 |
| 20200901 | 孙少策 | Kaleidoscope语言代码解释（第五期） | [slides](slides/20200901-Kaleidoscope%EF%BC%88%E7%AC%AC%E4%BA%94%E6%9C%9F%EF%BC%89-%E5%AD%99%E5%B0%91%E7%AD%96.pdf) | [video](https://www.bilibili.com/video/BV1xD4y1m7Hu)| Kaleidoscope 相关的代码解释 |
| 20200828 | 孙少策 | Kaleidoscope语言代码解释（第四期） | [slides](slides/20200828-Kaleidoscope%EF%BC%88%E7%AC%AC%E5%9B%9B%E6%9C%9F%EF%BC%89-%E5%AD%99%E5%B0%91%E7%AD%96.pdf) | [video](https://www.bilibili.com/video/BV1Q54y127nn)| Kaleidoscope 相关的代码解释 |
| 20200826 | 孙少策 | Kaleidoscope语言代码解释（第三期） | [slides](slides/20200826-Kaleidoscope%EF%BC%88%E7%AC%AC%E4%B8%89%E6%9C%9F%EF%BC%89-%E5%AD%99%E5%B0%91%E7%AD%96.pdf) | [video](https://www.bilibili.com/video/BV1My4y1y73q)| Kaleidoscope 相关的代码解释 |
| 20200823 | Boyang Han | Introduction to FIRRTL | [slides](slides/20200823-Intro-to-FIRRTL.pdf) | [video](https://www.bilibili.com/video/BV12a4y177ME)| Introduction to FIRRTL, Installation of FIRRTL compiler, basic syntax of FIRRTL. |
| 20200819 | 孙少策 | Kaleidoscope语言代码解释（第二期） | [slides](slides/20200819-Kaleidoscope%EF%BC%88%E7%AC%AC%E4%BA%8C%E6%9C%9F%EF%BC%89-%E5%AD%99%E5%B0%91%E7%AD%96.pdf) | [video](https://www.bilibili.com/video/BV19t4y1U7qS)| Kaleidoscope 相关的代码解释 |
| 20200812 | 王萌 | Linux设备树介绍及加载过程分析 | [slides](slides/20200812-Linux%E8%AE%BE%E5%A4%87%E6%A0%91%E4%BB%8B%E7%BB%8D%E5%8F%8A%E5%8A%A0%E8%BD%BD%E8%BF%87%E7%A8%8B%E5%88%86%E6%9E%90-%E7%8E%8B%E8%90%8C.pdf) | [video](https://www.bilibili.com/video/BV1Ti4y1g7oH)| N/A | 
| 20200805 | 孙少策 | Kaleidoscope语言代码解释（第一期）| [slides](slides/20200805-Kaleidoscope%EF%BC%88%E7%AC%AC%E4%B8%80%E6%9C%9F%EF%BC%89-%E5%AD%99%E5%B0%91%E7%AD%96.pdf) | [video](https://www.bilibili.com/video/BV1qk4y1m7tf)| Kaleidoscope 相关的代码解释 |
| 20200804 | 张定立  | OpenJDK对于RISC-V的支持现状以及路线图 | [slides1](./20200804-OpenJDK%E5%AF%B9%E4%BA%8ERISC-V%E7%9A%84%E6%94%AF%E6%8C%81%E7%8E%B0%E7%8A%B6%E4%BB%A5%E5%8F%8A%E8%B7%AF%E7%BA%BF%E5%9B%BE.pdf) [slides2](./20200804-OpenJDK%E5%AF%B9%E4%BA%8ERISC-V%E7%9A%84%E6%94%AF%E6%8C%81%E7%8E%B0%E7%8A%B6%E4%BB%A5%E5%8F%8A%E8%B7%AF%E7%BA%BF%E5%9B%BE-%E8%A1%A5%E5%85%85%E6%8A%A5%E5%91%8A.pdf) | N/A | N/A |
| 20200722 | Boyang Han | Circuit Capture of Chisel (Part 2. Naming) | [slides](slides/20200729-Circuit-Capture-of-Chisel-p2-Naming.pdf) | [video](https://www.bilibili.com/video/BV1Zi4y137gs)| N/A |
| 20200722 | Boyang Han | Circuit Capture of Chisel (Part 1. Correctness) | [slides](slides/20200722-Circuit-Capture-of-Chisel-p1-Correctness.pdf) | [video](https://www.bilibili.com/video/BV1Qk4y127bC)| N/A |
| 20200715 | Boyang Han | Introduction to Chisel/FIRRTL Hardware Compiler Framework | [slides](slides/20200715-Intro-to-Chisel-FIRRTL-HCF.pdf) | [video](https://www.bilibili.com/video/BV1qV41167Wu)| Introduction to Chisel/FIRRTL Hardware Compiler Framework |
| 20200624 | 王萌 | Spike-fesvr及外部设备实现分析 | [slides](slides/20200624-Spike-fesvr%E5%8F%8A%E5%A4%96%E9%83%A8%E8%AE%BE%E5%A4%87%E5%AE%9E%E7%8E%B0%E5%88%86%E6%9E%90-wangmeng.pdf) | [video](https://www.bilibili.com/video/BV1ET4y1J7As)| 介绍qemu_bios工具 |
| 20200619 | 陈嘉炜 | QEMU_BIOS简介 | [slides](slides/20200619-QEMU%20BIOS%E7%AE%80%E4%BB%8B.pptx) | [video](https://www.bilibili.com/video/BV1xV411k7mr)| 介绍qemu_bios工具 |
| 20200617 | 汪辰 | 基于树莓派开发I2C裸机驱动 | [slides](slides/20200617-dev-i2c-on-raspi-wangchen.pdf) | [video](https://www.bilibili.com/video/BV16p4y1D77b)| I2C 总线简介以及介绍如何基于基于树莓派开发 I2C 的裸机驱动 |
| 20200617 | 王萌 | Spike 代码框架及具体实现分析 | [slides](slides/20200617-Spike%20%E4%BB%A3%E7%A0%81%E6%A1%86%E6%9E%B6%E5%8F%8A%E5%85%B7%E4%BD%93%E5%AE%9E%E7%8E%B0%E5%88%86%E6%9E%90-wangmeng.pdf) | [video](https://www.bilibili.com/video/BV1QT4y1J7SJ)| N/A |
| 20200610 | 杨文章 | v8中snapshot的代码分析 | [slides](slides/20200610-v8%E4%B8%ADsnapshot%E7%9A%84%E4%BB%A3%E7%A0%81%E5%88%86%E6%9E%90-%E6%9D%A8%E6%96%87%E7%AB%A0.pptx) | [video](https://www.bilibili.com/video/BV1UV411r7Nq)| v8项目中mksnapshot的机制分析 |
| 20200604 | 张洪滨 | 使用OpenROAD构建蜂鸟E203处理器核GDS | [slides](slides/20200604-%E4%BD%BF%E7%94%A8OpenROAD%E6%9E%84%E5%BB%BA%20%E8%9C%82%E9%B8%9FE203%E5%A4%84%E7%90%86%E5%99%A8%E6%A0%B8GDS-zhanghongbin.pdf) | [video](https://www.bilibili.com/video/BV17C4y1a7Pv)| 完成蜂鸟E203处理器核从RTL代码到GDS二进制文件的全流程设计 |
| 20200527 | 邹小芳 | V8移植简介 | [slides](slides/20200527-V8%E7%A7%BB%E6%A4%8D%E7%AE%80%E4%BB%8B-zouxiaofang.pdf) | [video](https://www.bilibili.com/video/BV11K4y1t76G)| N/A |
| 20200527 | 杨文章 | Dive into v8 torque | [slides](./dive-into-torque.pdf) | [video](https://www.bilibili.com/video/BV1JK411s7Pv)| v8项目中torque语言的编译器源码分析 |
| 20200527 | 陆亚涵 | V8指令选择中的优化 | [slides](slides/20200527-v8%E6%8C%87%E4%BB%A4%E9%80%89%E6%8B%A9%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%9A%84%E4%BC%98%E5%8C%96.pdf) | - | N/A |
| 20200527 | 王鹏 | RISC-V rvv v0.9 v0.8 草案对比 第十一课 | [slides](slides/20200527-riscv-v-spec0.9%E5%92%8C0.8%E5%AF%B9%E6%AF%94-wangpeng.pdf) | [video](https://www.bilibili.com/video/av413293037/)| N/A |
| 20200513 | 陆亚涵 | V8测试流程介绍以及指令选择单元测试源码分析 | [slides](slides/20200513-V8%E6%B5%8B%E8%AF%95%E6%B5%81%E7%A8%8B%E4%BB%8B%E7%BB%8D%E4%BB%A5%E5%8F%8A%E6%8C%87%E4%BB%A4%E9%80%89%E6%8B%A9%E5%8D%95%E5%85%83%E6%B5%8B%E8%AF%95%E6%BA%90%E7%A0%81%E5%88%86%E6%9E%90-luyahan.pptx) | - | N/A |
| 20200513 | 王鹏 | clang和rvv benchmark 第十课 | [slides](slides/20200513-clang%E5%92%8Crvv%20benchmark-wangpeng.pdf) | [video](https://www.bilibili.com/video/BV13z4y1d7zK)| N/A |
| 20200513 | 张爱珩 | 阅读 CDT plugins 插件代码 | [slides](slides/20200513-plugins%20code%20analysis-zhangaiheng.pdf) | - | Eclipse CDT插件（gcc交叉编译工具链的实现）代码阅读分析 |
| 20200506 | 陆旭凡 | 将quickjs翻译到riscv平台可以执行的文件 | [slides](slides/20200506-quickjs%E7%BF%BB%E8%AF%91%E5%88%B0riscv%E5%B9%B3%E5%8F%B0-luxufan.pdf) | - | 使用riscv交叉编译器将quickjs的源码编译到riscv平台可执行的二进制文件，并运行出benchmark结果 |
| 20200430 | 王鹏 | LLVM测试框架、后端代码实例 第九课 | [slides](slides/20200429-LLVM%E6%B5%8B%E8%AF%95%E6%A1%86%E6%9E%B6%E3%80%81%E5%90%8E%E7%AB%AF%E4%BB%A3%E7%A0%81%E5%AE%9E%E4%BE%8B-wangpeng.pdf) | [video](https://www.bilibili.com/video/BV17f4y1m7By)| N/A |
| 20200429 | 张爱珩 | 编写、导出及安装Eclipse插件 | [slides](slides/20200429-%E5%88%9D%E8%AF%95%E7%BC%96%E5%86%99Eclipse%E6%8F%92%E4%BB%B6-zhangaiheng.pdf) | - | 开发一个Eclipse插件并投入使用的基本流程 |
| 20200422 | 王鹏 | rvv-llvm学习1 第八课 | [slides](slides/20200422-rvv-llvm%E5%AD%A6%E4%B9%A01-wangpeng.pdf) | [video](https://www.bilibili.com/video/BV1Df4y1S7aS)| N/A |
| 20200416 | 张爱珩 | GNU MCU Eclipse 及插件的安装和配置 | [slides](slides/20200416-%E5%AE%89%E8%A3%85GNU%20MCU%20Eclipse-zhangaiheng.pdf) | - | 开发基于RISC-V架构的IDE所需环境的准备工作 |
| 20200415 | 王鹏 | rvv和玄铁c910对比总结 第七课 | [slides](slides/20200415-rvv%E5%92%8C%E7%8E%84%E9%93%81c910%E5%AF%B9%E6%AF%94%E6%80%BB%E7%BB%93-wangpeng.pdf) | [video](https://www.bilibili.com/video/BV1YA411b78K)| N/A |
| 20200401 | 王鹏 | 玄铁C910指令扩展总结 第六课 | [slides](slides/20200401-%E7%8E%84%E9%93%81C910%E6%8C%87%E4%BB%A4%E6%89%A9%E5%B1%95%E6%80%BB%E7%BB%93-wangpeng.pdf) | [video](https://www.bilibili.com/video/av455087604)| N/A |
| 20200401 | 陈家友 | 近期Assember工作总结 | [slides](slides/20200401-Assember-%E9%99%88%E5%AE%B6%E5%8F%8B_V2.pdf) | - | N/A |
| 20200311 | 王鹏 | c910扩展指令集添加 第五课 | [slides](slides/20200311-c910%E6%89%A9%E5%B1%95%E6%8C%87%E4%BB%A4%E9%9B%86%E6%B7%BB%E5%8A%A0-wangpeng.pdf) | [video](https://www.bilibili.com/video/av95568973)| N/A |
| 20200311 | 张爱珩 | 基于RISC-V的IDEs的调研 | [slides](slides/20200311-%E8%B0%83%E7%A0%94IDEs-zhangaiheng.pdf) | - | 四种支持RISC-V架构的IDE调研 |
| 20200304 | 王鹏 | march=c910和论文分享 第四课 | [slides](slides/20200304-march%3Dc910%E5%92%8C%E8%AE%BA%E6%96%87%E5%88%86%E4%BA%AB-wangpeng.pdf) | [video](https://www.bilibili.com/video/av93642478)| N/A |
| 20200226 | 郑志文 | OpenCV for RISC-V 第四课：RISC-V编译工具链GCC介绍 | [slides](slides/20200226-RISC-V%E7%BC%96%E8%AF%91%E5%B7%A5%E5%85%B7%E9%93%BEGCC%E4%BB%8B%E7%BB%8D-zhengzhiwen.pdf) | - | RISC-V编译工具链GCC种类及参数的介绍 |
| 20200226 | 王鹏 | 添加mcpu=C910和RISCV后端介绍 第三课 | [slides](slides/20200225-%E6%B7%BB%E5%8A%A0mcpu%3DC910%E5%92%8CRISCV%E5%90%8E%E7%AB%AF%E4%BB%8B%E7%BB%8D-wangpeng.pdf) | [video](https://www.bilibili.com/video/av91874783)| N/A |
| 20200219 | 郑志文 | OpenCV for RISC-V 第三课：OpenCV编译相关文件讲解 | [slides](slides/20200219-OpenCV%E7%BC%96%E8%AF%91%E7%9B%B8%E5%85%B3%E6%96%87%E4%BB%B6%E8%AE%B2%E8%A7%A3-zhengzhiwen.pdf) | - | N/A |
| 20200219 | 王鹏 | 添加llvm-mc命令行选项 第二课 | [slides](slides/20200219-%E6%B7%BB%E5%8A%A0llvm-mc%E5%91%BD%E4%BB%A4%E8%A1%8C%E9%80%89%E9%A1%B9-wangpeng.pdf) | [video](https://www.bilibili.com/video/av90145259)| 添加llvm-mc命令行选项，mcpu的属性mattr用tablegen语言的部分定义 |
| 20200219 | 张爱珩 | 准备FPGA开发的环境工作总结 | [slides](slides/20200219-%E5%AE%9E%E7%8E%B0FPGA%E7%9A%84%E5%87%86%E5%A4%87%E5%B7%A5%E4%BD%9C-zhangaiheng.pdf) | - | 在FPGA上实现RISC-V所需环境的准备工作 |
| 20200213 | 王英恺 | 虚拟机简介 | [slides](slides/20200213-%E8%99%9A%E6%8B%9F%E6%9C%BA%E7%AE%80%E4%BB%8B-wangyingkai.pdf) | - | N/A |
| 20200213 | 张江涛 | V8解释器字节码代码浅析 | [slides](slides/20200213-Bytecode_of_Ignition-zhangjiangtao.pdf) | [video](https://www.bilibili.com/video/av88702574)| V8字节码源码解析 |
| 20200213 | 王天然 | 编译器入门 | [slides](slides/20200213-%E7%BC%96%E8%AF%91%E5%99%A8%E5%85%A5%E9%97%A8-Wangtianran.pdf) | - |N/A |
| 20200212 | 郑志文 | OpenCV for RISC-V 第二课：RISC-V目标平台介绍 | [slides](slides/20200212-RISC-V%E7%9B%AE%E6%A0%87%E5%B9%B3%E5%8F%B0%E4%BB%8B%E7%BB%8D-zhengzhiwen.pdf) | [video](https://www.bilibili.com/video/av88544146)|N/A |
| 20200212 | 王鹏 | RISCV后端和llvm-mc介绍 第一课 | [slides](slides/20200212-RISCV%E5%92%8Cllvm-mc%E4%BB%8B%E7%BB%8D-wangpeng.pdf) | [video](https://www.bilibili.com/video/av88546051)| 介绍 llvm-mc相应的命令行选项，RISCV后端结合源代码介绍 |
| 20200212 | 张爱珩 | 关于在FPGA上跑通RISC-V的调研 | [slides](slides/20200212-FPGA-zhangaiheng.pdf) | - | 在FPGA上实现RISC-V所需硬件资源及开发工作 |
| 20200205 | 郑志文 | OpenCV for RISC-V 第一课 | [slides](slides/20200205-OpenCV-zhengzhiwen.pdf) | [links](https://github.com/isrc-cas/opencv-riscv)|N/A |
| 20200205 | 陈影 | 玄铁C910玄铁C910初次接触 | [slides](slides/20200205-C910-chenying.pdf) | [video](https://www.bilibili.com/video/av86918335)|N/A |
| 20200205 | 张洪滨 | MLIR & python binding简介 | 参见文末 `20200205-MLIR` | [video](https://www.bilibili.com/video/av91877563)  |内容参考:[MLIR官方资料](https://mlir.llvm.org/) |


### MLIR Toy Tutorial 概述-20200226-研究生张洪滨

报告题目：MLIR Toy Tutorial 概述

报告时间：2020年02月26日

报告人：张洪滨

隶属项目：Google Summer of Code 2020

内容简介：基于一个Toy语言实例，介绍从源语言到生成LLVM IR的MLIR编译流程。

幻灯片或资料链接：

https://www.bilibili.com/video/av91878526

视频或专栏文章链接：

MLIR ODS 框架的使用示例 -- 自定义Operation

https://zhuanlan.zhihu.com/p/105576276

MLIR 表达式变型

https://zhuanlan.zhihu.com/p/105905654

MLIR 实现泛化的表达式变型

https://zhuanlan.zhihu.com/p/106472878

MLIR 表达式优化 -- 部分Lowering

https://zhuanlan.zhihu.com/p/107137298

MLIR 表达式Lowering到LLVM IR

https://zhuanlan.zhihu.com/p/108386819

MLIR 向源语言添加struct类型

https://zhuanlan.zhihu.com/p/108575517https://zhuanlan.zhihu.com/p/104948867)

版权、资料来源及致谢备注：

报告中内容部分参考自[MLIR官方资料](https://mlir.llvm.org/docs/Tutorials/Toy/)
### 20211201 - RISCV是这么来的 - 史玉龙

报告题目：RISCV是这么来的

报告时间：20211201

报告人：史玉龙

隶属项目：技术分享

内容简介：主要介绍RISCV及CPU架构的发展史

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/

视频或专栏文章链接：

https://www.bilibili.com/video/BV1uU4y1M7Sd?spm_id_from=333.999.0.0


### 20211215 - gcc它干了什么 - 史玉龙

报告题目：gcc它干了什么

报告时间：20211215

报告人：史玉龙

隶属项目：技术分享

内容简介：主要介绍gcc编译的过程

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/


### 20220105 - CMO指令介绍 - 史玉龙

报告题目：CMO指令介绍

报告时间：20220105

报告人：史玉龙

隶属项目：技术分享

内容简介：主要介绍关于内存管理指令——CMO指令的介绍，包括其作用、实现进展及gcc部分实现计划等

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/

视频或专栏文章链接：

https://www.bilibili.com/video/BV1GF411v7Ch?spm_id_from=333.999.0.0


### 20220216 - 关于highway库的调研报告 - 史玉龙

报告题目：highway库介绍

报告时间：20220216

报告人：史玉龙

隶属项目：技术分享

内容简介：主要介绍highway库的概念及实现时的代码移植要求和实现进展情况

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/

### 20220314 - LLVM ORCJIT介绍 - 樊其轩(Alexfanqi)

报告题目：LLVM ORCJIT介绍

报告时间：20220314

报告人：樊其轩

隶属项目：技术分享

内容简介：介绍了JIT原理，LLVM ORCJIT api的设计和简单代码分析。

幻灯片或资料链接：

[pdf版本ppt](./20220314-LLVM_ORCJIT%E4%BB%8B%E7%BB%8D-alexfan.pdf)

视频或专栏文章链接：

https://www.bilibili.com/video/BV13a41187NM

### 20220323 - 关于CMake和C++11的学习汇报 - 王壹

报告题目：CMake和C++11的学习汇报

报告时间：20220323

报告人：王壹

隶属项目：学习汇报

内容简介：介绍在实习期间学习的关于CMake和C++11的相关知识。

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/


### 20220330 - 关于移动语义和QT的学习汇报 - 王壹

报告题目：移动语义和QT的学习汇报

报告时间：20220330

报告人：王壹

隶属项目：学习汇报

内容简介：介绍在实习期间学习的关于移动语义和QT的相关知识。

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/


### 20220406 - Coelacanthus - 如何给火狐（Firefox）贡献代码

报告题目：如何给火狐（Firefox）贡献代码

报告时间：20220406

报告人：Coelacanthus

隶属项目：Arch Linux 小队

内容简介：介绍如何给火狐（Firefox）贡献代码。

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/

视频或专栏文章链接：

https://www.bilibili.com/video/BV1fY41177mf


### 20220406 - Coelacanthus - 让编程语言爱上RISC-V：以Crystal为例

报告题目：让编程语言爱上RISC-V：以Crystal为例

报告时间：20220406

报告人：Coelacanthus

隶属项目：Arch Linux 小队

内容简介：介绍如何将一门编程语言移植到 RISC-V。

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/

视频或专栏文章链接：

https://www.bilibili.com/video/BV11F41137Xz


### 20220406 - CMake立大功：glibc更新引发的陈年旧案 - XieJiSS

报告题目：CMake立大功：glibc更新引发的陈年旧案

报告时间：20220406

报告人：XieJiSS (Pan RZ)

隶属项目：Arch Linux 小队

内容简介：关于我们如何与 RV64 gcc subword atomic 打交道

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/

视频或专栏文章链接：

https://blog.jiejiss.com/A-RISC-V-gcc-pitfall-revealed-by-a-glibc-update/

https://www.bilibili.com/video/BV1Vq4y1a7Ny

### 20220511 - Coelacanthus - pkgconfig 的前世今生

报告题目：pkgconfig 的前世今生

报告时间：20220511

报告人：Coelacanthus

隶属项目：Arch Linux 小队

内容简介：pkgconfig 的来源、设计与使用

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/

视频或专栏文章链接：

https://www.bilibili.com/video/BV1av4y1N7a4

### 20220518 - Coelacanthus - X11 与 Wayland

报告题目：X11 与 Wayland：Linux GUI 的曲折发展史

报告时间：20220518

报告人：Coelacanthus

隶属项目：Arch Linux 小队

内容简介：介绍 Linux 上常见的两种图形系统 X11 和 Wayland 的历史，设计与优劣

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/

视频或专栏文章链接：

https://www.bilibili.com/video/BV1sS4y187Vr

### 20200205-MLIR

[1.初见MLIR](https://zhuanlan.zhihu.com/p/101879367) <br> [2.MLIR的法宝](https://zhuanlan.zhihu.com/p/102212806)<br> [3.MLIR的惊鸿一瞥](https://zhuanlan.zhihu.com/p/102395938)<br> [4.MLIR的生产线--Dialects和他的小伙伴们](https://zhuanlan.zhihu.com/p/102565792)<br> [5.MLIR Dialect的零件生产者 – TableGen](https://zhuanlan.zhihu.com/p/102727417) <br>[6.MLIR 开放项目 -- python bindings](https://zhuanlan.zhihu.com/p/102934213)<br> [7.MLIR python bindings的问题&Dialect Operation build方法](https://zhuanlan.zhihu.com/p/103102332) <br> [8.MLIR python bindings的问题&Dialect Operation build方法](https://zhuanlan.zhihu.com/p/103102332) <br> [9.MLIR python binding -- pybind11](https://zhuanlan.zhihu.com/p/103836518) <br>[10.将pybind11示例嵌入到MLIR中](https://zhuanlan.zhihu.com/p/104717000) <br> [11.基于CMake构建系统的MLIR Example扩展](https://zhuanlan.zhihu.com/p/104948867)<br> [12.MLIR python binding 简易模型建立](https://zhuanlan.zhihu.com/p/103524807)


### 20220406 - CLIC调研报告-史玉龙

报告题目：关于CLIC的调研报告

报告时间：20220406

报告人：史玉龙

隶属项目：gnu-toolchain 小队

内容简介：介绍RISCV架构的CLIC中断管理

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/

视频或专栏文章链接：

https://www.bilibili.com/video/BV1TS4y1P7Tv?spm_id_from=333.851.dynamic.content.click

### 20220608-RISC-V Vector寄存器图解-孙少策

报告题目：RISC-V Vector寄存器图解

报告时间：20220608

报告人：孙少策

隶属项目：LLVM小队

内容简介：使用图解的方式，来介绍RVV寄存器相关的一些概念。

幻灯片或资料链接：

https://github.com/plctlab/PLCT-Open-Reports/20220608-RISC-V%20Vector寄存器图解-孙少策.pdf

视频或专栏文章链接：

https://www.bilibili.com/video/BV1UU4y1R7Ep

### 20220706 - RISC-V 指令集扩展检测机制现状 - 郑鈜壬

报告题目：RISC-V 指令集扩展检测机制现状

报告时间：20220706

报告人：郑鈜壬

隶属项目：Chisel 小组

内容简介：

+ 从 misa/mconfigptr 到设备树到内核到用户空间的扩展检测机制介绍
+ Zk 与 Zicsr/Zifencei 的案例分析

幻灯片或资料链接：

[pdf](./20220706-郑鈜壬-discovery.pdf)

[在线视频回放](https://www.bilibili.com/video/BV1a3411c7LY)

