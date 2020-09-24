# SweRV Cores Experiments

This repository is a part of final BSC project at the VLSI lab in the technion.
In this project we will explore some methods and tools when using the open source SweRV Cores.
We will focus mainly on the SweRV EH1 dsign, but it can be easily with some changes to the other designs.

## Benchmarks and Simulations
### Dependencies
* Verilator (4.030 or later) must be installed on the system if running with verilator.
* RISCV tool chain (based on gcc version 7.3 or higher) must be installed so that it can be used to prepare RISCV binaries to run.
### Instructions
* Setup RV_ROOT to point to the path of the SweRV Core design you chose in your local filesystem
```export RV_ROOT=/path/to/swerv```
* go to folder of simulations where you want log files will be written.
* Determine your configuration {optional} - SweRV can be configured by running the $RV_ROOT/configs/swerv.config script:
```$RV_ROOT/configs/swerv.config -h``` for detailed help options
* put the source files of the testbench in the ```$RV_ROOT/testbench/asm``` folder
* run simulation:
```
make -f $RV_ROOT/tools/Makefile [<simulator>] [debug=1] [snapshot=<snapshot>] [target=<target>] [TEST=<test>] [TEST_DIR=<path_to_test_dir>] [CONF_PARAMS=<swerv.config option>]

where:

<simulator> -  can be 'verilator' (by default) 'irun' - Cadence xrun, 'vcs' - Synopsys VCS, 'vlog' Mentor Questa,
               'riviera' - Aldec Riviera-PRO if not provided, 'make' cleans work directory, builds verilator executable and runs a test.
debug=1     -  allows VCD generation for verilator, VCS and Riviera-PRO and SHM waves for irun option.
<target>    -  predefined CPU configurations 'default' ( by default), 'default_ahb', 'default_pd', 'high_perf'
TEST        -  allows to run a C (<test>.c) or assembly (<test>.s) test, hello_world is run by default 
TEST_DIR    -  alternative to test source directory testbench/asm
<snapshot>  -  run and build executable model of custom CPU configuration, remember to provide 'snapshot' argument 
               for runs on custom configurations.
CONF_PARAMS -  configuration parameter for swerv.config : ex: 'CONF_PARAMS=-unset=dccm_enable' to build with no DCCM
```
* Notice: you can add a Makefile to your source file. Read $RV_ROOT/tools/Makefile for more information.


## Supporting and Designing new instructions 
### Dependencies
* Verilator (4.030 or later) must be installed on the system if running with verilator.
* RISCV tool chain (based on gcc version 7.3 or higher) must be installed so that it can be used to prepare RISCV binaries to run.
* espresso logic minimizer

An example of such design is in ```Cores-SweRV_new_instruction``` folder where we implemnted a simple additional instruction which add 3 to a source register and write the result to a destination register.

### General Mode Of Work:
* Define your instruction format - in accordance with the RISC-V ISA instructions types and formats, using only available opcodes.
* Define the indicators you would like the decoder will set for your case (you can add new indicators in the ```design/include/swerv_types.sv``` file.
* Change the ```design/dec/decode``` to your new instructions.
* Calculate new equaitions:

 to generate all the equations from "decode" except legal equation:
```
./coredecode -in decode > coredecode.e
espresso -Dso -oeqntott coredecode.e | ./addassign -pre out.  > equations
```
   to generate the legal (32b instruction is legal) equation:
```
./coredecode -in decode -legal > legal.e
espresso -Dso -oeqntott legal.e | ./addassign -pre out. > legal_equation
```
* Pass the new indicators to other relevant structs (most likely the alu_pkt for alu instructions, dest_pkt_t to keep values in pipe at the decoder etc.)
* Change Execution and Write Back stages according to the required result.


## Supporting and Designing new hardware with SweRV Core: Branch & Branch Taken counters
### Dependencies
* Verilator (4.030 or later) must be installed on the system if running with verilator.
* RISCV tool chain (based on gcc version 7.3 or higher) must be installed so that it can be used to prepare RISCV binaries to run.
* espresso logic minimizer

### General Information
In this experiment we wanted to design and implement branch counter and branch-taken counter. The branch counter will count the number of conditional branches in the running code, and the branch-taken counter will count the number of conditional branches which their result was taken in the running code.
In addition, we will add support for a number of new instructions (in R-type format):
1.	Start Counting – will enable the counting for each instruction which follows it.
2.	Stop Counting – will disable the counting for each instruction which follows it.
3.	Reset Branch Counter – will reset the branch counter to zero.
4.	Reset Branch-Taken Counter – will reset the branch-taken counter to zero.
5.	Read Branch Counter – will read the value of the branch counter to destination register (rd).
6.	Read Branch-Taken Counter –  will read the value of the branch-taken counter to destination register (rd).

```Cores-SweRV_Counters\Cores-SweRV``` is the new design.
In the folder ```Cores-SweRV_Counters``` you can also find 3 tests we simulated on the new design.





## useful linkes:
1. https://content.riscv.org/wp-content/uploads/2019/12/12.11-14.20a3-Bandic-WD_SweRV_Cores_Roadmap_v4SCR.pdf
2. https://rv8.io/bench.html
3. https://en.wikipedia.org/wiki/Benchmark_(computing)
