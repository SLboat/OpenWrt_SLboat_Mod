# the image build's check patch
IMAGE_BUILD_PATH=OpenWrt-ImageBuilder-ar71xx_generic-for-linux-x86_64

# check if have the image build
if [ ! -d $IMAGE_BUILD_PATH ];then
	# oh we dont have feeds here:(
	echo -e "\n\ncan't found any image builder in here,wont work anyway:("
	echo "you may need try [./get_source.sh] first!"
	echo -e "plz try again!\n"
	exit 1
fi

# build a link
ln -sf ./$IMAGE_BUILD_PATH/bin ./

# go to compile
cd ./$IMAGE_BUILD_PATH
# start make...
make image PROFILE=TLWR703 PACKAGES="luci luci-theme-bootstrap luci-i18n-chinese restorefactory" FILES="../SLboatMod_files"
# TODO:check if really work..
echo -e "\n\n\n"
echo "------- Work done! -------\n"
echo -e "You can found the firmware on ./bin/"
echo -e "if you like,you should try direct by:"
echo -e "python -m SimpleHTTPServer&"
echo -e "\n\n\n "
