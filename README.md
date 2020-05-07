# jetson-nano
this is basic setup for jetson-nano 

PrepareOS.sh
	download all dependencies required for yocto
	download all sources that I could require for build

Build.sh
	will load the build environment and begin a bitbake build

local.conf
	has been edited for basic install
	MACHINE="jetson-nano"
	DISTO="poky"
	DISTRO_Features="systemd"




