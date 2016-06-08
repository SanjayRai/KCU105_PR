# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

.PHONY: all

all: build_all

build_all:
	cd ./src/PR_modules/PR_module_linear_ramp/build;vivado -mode batch -source vivado_batch.tcl 
	cd ./src/PR_modules/PR_module_sine_wave/build;vivado -mode batch -source vivado_batch.tcl 
	cd ./src/TOP_static/build;vivado -mode batch -source vivado_batch.tcl 
	cd vivado_batch_PR_build;vivado -mode batch -source vivado_batch.tcl 
clean:
	cd ./src/PR_modules/PR_module_linear_ramp/build; ./mk_clean.bat
	cd ./src/PR_modules/PR_module_sine_wave/build; ./mk_clean.bat
	cd ./src/TOP_static/build; ./mk_clean.bat
	cd vivado_batch_PR_build;./mk_clean.bat
