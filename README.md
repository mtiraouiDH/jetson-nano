# jetson-nano
this is basic setup for jetson-nano <br/>
<br/>
PrepareOS.sh<br/>
	download all dependencies required for yocto<br/>
	download all sources that I could require for build<br/>
<br/>
Build.sh<br/>
	will load the build environment and begin a bitbake build<br/>
<br/>
local.conf<br/>
	has been edited for basic install<br/>
	MACHINE="jetson-nano"<br/>
	DISTO="poky"<br/>
	DISTRO_Features="systemd"<br/>
	POKY VERSION "Warrior"<br/>



