#!bin/bash

# checking deps
	deps="gawk wget git mpack diffstat unzip texinfo gcc-multilib build-essential \
	chrpath socat cpio python python3 python3-pip python3-pexpect xz-utils \
	debianutils iputils-ping libsdl1.2-dev xterm curl python"
	echo "Checking Dependencies"
	for i in $deps;
do
	num=$(dpkg -l "$i" 2>/dev/null | egrep '^ii' | wc -l)
	if [ "$num" -eq 1 ]; then
		echo "\e[32m \t [ OK ] Package $i Installed\e[0m"
	else
		echo "$i" not found. Please approve installation.
    		sudo apt-get install "$i" -y
	fi
done

if [ ! -d "${HOME}/jetson-nano/sources" ]; then
	mkdir sources && cd sources/
	echo "pulling repo's"
	git clone https://github.com/madisongh/meta-tegra.git -b warrior
	git clone git://git.yoctoproject.org/poky -b warrior
	git clone https://github.com/openembedded/openembedded-core.git -b warrior
else
	echo "Repo's Already Exist"
fi

echo "Everything Downloaded !!!"

