echo "Setting Enviroment..."
. /home/nano/jetson-nano/sources/poky/oe-init-build-env build

bitbake core-image-minimal
