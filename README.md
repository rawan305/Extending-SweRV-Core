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

## FPGA implementation
### General
We will present how to create Zedboarf FPGA implementation for the SweRV Core EH1.
The implementation is almost the same as the one created by Chipa-Alliance and WD for Nexys4: https://github.com/chipsalliance/Cores-SweRV_fpga

## Instructions:
1. Set the SWERV_EH1_FPGA_PATH environment variable to repository path.
```
 $ cd /path/to/Cores-SweRV_fpga 
 $ export SWERV_EH1_FPGA_PATH=`pwd`
```
2. Copy ```Cores-SweRV``` folder to the hardware directory (path:```${SWERV_EH1_FPGA_PATH}/hardware```), rename it ```swerv_eh1``` and set RV_ROOT to point ```swerv_eh1``` folder:
```$ export RV_ROOT=$SWERV_EH1_FPGA_PATH/hardware/swerv_eh1```
3. Configure ```swerv_eh1``` core for the Nexys4 DDR board. We use default settings with ```reset_vec=0x0```.
Go to configs folder (path: ```$RV_ROOT/configs```) and run the ```swerv.config``` script as below:
```$ ./swerv.config -set reset_vec=0x0 -unset=icache_enable```
4. Create FPGA project using the vivado tcl project script file ```zedboard.tcl``` inside ```project/script``` folder.
```
 $ cd $SWERV_EH1_FPGA_PATH/hardware/project/script
 $ vivado -source nexys4ddr_refprj.tcl
```

Vivado will open and start building your project files. The GUI will stay open to in the new project environment.

5. Now that you have the project directory, you synthesize and implement your design to obtain the FPGA .bit file, using the same flow you would use for any other Xilinx design: ```Menu >> Flow >> Run``` Implementation

6. Now we are ready to program the Zedboard. Connect the board to the host using micro USB cable to download the bit file.

7.	Connect the JTAG HS2 and PMOD UART-USB connectors with the Zedboard to download and debug software applications.

8.	Switch on the board and download the bit file using the Vivado Hardware Manager.

9. Next, we need an application to run on this system. Go to ```software/apps``` folder and build the application using ```make``` command. We provide a makefile to generate the executable (e.g., hello.elf).
There are two applications:
	i. ```hello```: print ```Hello world from SweRV on FPGA!```
	ii. ```sum```: compute sum of the numbers from 3 to 9.
	NOTE: The ```bsp``` folder has the startup file, linker loader and openocd script.
	NOTE: The ```common``` folder has printf, uart device functions and memory map information.

10. Once we generate an application executable, we need to configure openocd+GDB and UART device.  
    a. OpenOCD+GDB   
	    1. Run openocd: `swerv_openocd.cfg` file inside `bsp` folder  
	    `$ sudo openocd -f swerv_openocd.cfg` (sudo may be required to access the Olimex device directly)  
  	    2. Use another terminal and run GDB. Then connect to openocd, 
		   load and debug.
		   
            $riscv32-unknown-elf-gdb hello.elf < 
			....		 
			(gdb) target remote localhost:3333
			....
			(gdb) load
		    ....
		

	b. UART: create serial connection with the uart interface 

11.	If everything works fine, you can see a message on the UART terminal.
    
