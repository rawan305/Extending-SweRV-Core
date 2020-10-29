# SweRV Cores Experiments

This repository is a part of final BSc project at the VLSI lab in the technion.
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


## Designing new RISC-V instructions with SweRV Core 
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


## Branch & Branch Taken counters in SweRV Core
### Dependencies
* Verilator (4.030 or later) must be installed on the system if running with verilator.
* RISCV tool chain (based on gcc version 7.3 or higher) must be installed so that it can be used to prepare RISCV binaries to run.
* espresso logic minimizer

### General Information
In this experiment we wanted to design and implement branch counter and branch-taken counter. The branch counter will count the number of conditional branches in the running code, and the branch-taken counter will count the number of conditional branches which their result was taken in the running code.
In addition, we will add support for a number of new instructions (in R-type format):
1.	bcntson  - Start Counting – will enable the counting for each instruction which follows it.
2.	bcntsoff - Stop Counting – will disable the counting for each instruction which follows it.
3.	bcntrst  - Reset Branch Counter – will reset the branch counter to zero.
4.	btcntrst - Reset Branch-Taken Counter – will reset the branch-taken counter to zero.
5.	bcntrd   - Read Branch Counter – will read the value of the branch counter to destination register (rd).
6.	btcntrd  - Read Branch-Taken Counter –  will read the value of the branch-taken counter to destination register (rd).

To install a RISC-V toolchain with the new instructions see: https://github.com/nbarazani/riscv-gnu-toolchain

```Cores-SweRV_Counters\Cores-SweRV``` is the new design.

In the folder ```Cores-SweRV_Counters\Cores-SweRV\testbench\asm``` you can also find 3 tests we simulated on the new design:
* counters_test.s
* counters_test2.s
* counters_test3.s

```Cores-SweRV_Counters\branch_counters.h``` includes C wrapper functions for each one of the new instructions and 2 Macro that can be used at the beginning and the end of any simulation main code to reset counters and print their results (assuming a printf implementation exists).

In addition there is a version of SweRV EH1 with Branch-Counters which also output their values on: https://github.com/nbarazani/Cores-SweRV


## FPGA implementation
### General
We will present how to create Zedboard FPGA implementation for the SweRV Core EH1.
The implementation is based on the one created by Chips-Alliance and WD for Nexys-A7: https://github.com/chipsalliance/Cores-SweRVolf 

Our customized version (displaying also Branch-Counters) can be found on:
- https://github.com/nbarazani/Cores-SweRVolf
- https://github.com/nbarazani/Cores-SweRV

### Dependencies and Requirements
* Digilent’s Nexys A7 board
* Vivado
* Verilator
* python3
* fusesoc (pip install fusesoc)
* RISC V Toolchain (with new instructions or without)
* RISC V OpenOCD

### How to use a modified SweRV core version
1. Fork https://github.com/chipsalliance/Cores-SweRVolf
2. Fork https://github.com/chipsalliance/Cores-SweRV
3. Modify Cores-SweRV repository to your own modified SweRV Core.
4. Go to Cores-SweRVolf:
	1. edit cores/swerv.core:
		1. replace the name at the top:
			```name : <your_name>:cores:SweRV_EH1:1.7```
		2. replace the provider details at the bottom:
			```
			name    : github
			user    : <your github user>
			repo    : Cores-SweRV
			version : <the commit version you’d like to use>
			patches : [cast_to_enum.patch]
			```
	2. edit swervolf.core:
		1. replace dependency:
			```
			filesets:
			  core:
   			    files:
      				- rtl/dpram64.v
      				- rtl/axi2wb.v
      				- rtl/wb_mem_wrapper.v
      				- rtl/swervolf_syscon.v
      				- rtl/swerv_wrapper.sv
      				- rtl/swervolf_core.v
    				file_type : systemVerilogSource
    				depend :
      					- fusesoc:utils:generators
      					- uart16550
      					- ">=pulp-platform.org::axi:0.23.0-r1"
     					- ">=<your name>:cores:SweRV_EH1:1.5"
      					- simple_spi
    					- wb_intercon
			```
	3. Edit any RTL or data file you’d like to change. For example we changed rtl/swervolf_nexys.v, rtl/swervolf_core.v, rtl/swerv_wrapper.sv, data/swervolf_nexys.xdc in order to display the counters on the 7-Segment digits display.


### How to run on Nexys A7 
1. Create empty folder, e.g. named swervolf.
2. ```export WORKSPACE=$(pwd)```
3. ```export SWERVOLF_ROOT=$WORKSPACE/fusesoc_libraries/swervolf```
4. ```fusesoc library add fusesoc-cores https://github.com/fusesoc/fusesoc-cores```
5. ```fusesoc library add swervolf https://github.com/chipsalliance/Cores-SweRVolf```  

For your modified SweRVolf version:  
```fusesoc library add swervolf https://github.com/<your_name>/Cores-SweRVolf```  
For example, we used:  
```fusesoc library add swervolf https://github.com/nbarazani/Cores-SweRVolf```  

6. ```fusesoc run --target=nexys_a7 swervolf```
7. Compile your application:
	1. ```cp /path/to/source_files $SWERVOLF_ROOT/sw/```
	2. ```cd $SWERVOLF_ROOT/sw```
	3. ```make program_main_file.elf``` (for running from OpenOCD)
	4. ```make program_main_file.vh``` (for booting from RAM)
	5. ```cd $WORKSPACE``` 
8. Running application using OpenOCD:
	1. Open first shell to download the design to FPGA:
		1. ```Openocd -c "set BITFILE /path/to/bitfile" -f $SWERVOLF_ROOT/data/swervolf_nexys_program.cfg```
		2. /path/to/bitfile (usually) = $WORKSPACE/build/swervolf_0.7/nexys_a7-vivado/swervolf_0.7.bit
	2. On the same shell for debug run:
		1. ```openocd -f $SWERVOLF_ROOT/data/swervolf_nexys_debug.cfg```
	3. Open Second shell to see UART printing and run:
		1. ```sudo minicom -D /dev/ttyUSB?```
		2. /dev/ttyUSB? = for us it was /dev/ttyUSB1 but it might be different. Find the serial UART connection port.
	4. Open third shell and run:
		```
		telnet localhost 4444
		> load_image /path/to/file.elf
		> reg pc 0
		> resume
		```
9. Running application using bootrom_file:  
You might prefer using different booting method explained on the original SweRVolf repository by Chips-Alliance. For example, the application can run on booting.  
After stage 6 just type:  
```fusesoc run --target=nexys_a7 swervolf --bootrom_file=$SWERVOLF_ROOT/sw/ program_main_file.vh```  
If the board is connected, after compilation is finished the program will be loaded to memory and boot from there.


    
