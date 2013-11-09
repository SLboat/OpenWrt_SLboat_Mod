# the image build's check patch
IMAGE_BUILD_PATH=OpenWrt-ImageBuilder-ar71xx_generic-for-linux-i486

# check if have the image build
if [ ! -d $IMAGE_BUILD_PATH ];then
	# oh we dont have feeds here:(
	echo -e "\n\ncan't found any image builder in here,wont work anyway:("
	echo "you may need try [./get_source.sh] first!"
	echo -e "plz try again!\n"
	exit 1
fi

cd ./OpenWrt-ImageBuilder-ar71xx_generic-for-linux-i486
# start make...
make image PROFILE=TLWR703 PACKAGES="luci luci-theme-bootstrap luci-i18n-chinese restorefactory" FILES="../SLboatMod_files"
echo ..
echo "work done!"