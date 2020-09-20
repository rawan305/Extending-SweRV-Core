# SweRV Cores Experiments

This repository is a part of final BSC project at the VLSI lab in the technion.
In this project we will explore some methods and tools when using the open source SweRV Cores.
We will focus mainly on the SweRV EH1 dsign, but it can be easily with some changes to the other designs.

## Benchmarks and Simulations
### Dependencies
* Verilator (4.030 or later) must be installed on the system if running with verilator.
* RISCV tool chain (based on gcc version 7.3 or higher) must be installed so that it can be used to prepare RISCV binaries to run.
### Instructions to run
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
Notice: you can add a Makefile to your source file. Read $RV_ROOT/tools/Makefile for more information.




## useful linkes:
1. https://content.riscv.org/wp-content/uploads/2019/12/12.11-14.20a3-Bandic-WD_SweRV_Cores_Roadmap_v4SCR.pdf
2. https://rv8.io/bench.html
3. https://en.wikipedia.org/wiki/Benchmark_(computing)
