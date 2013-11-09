IMAGE_BUILD_PATH="./OpenWrt-ImageBuilder-ar71xx_generic-for-linux-i486"

# check if have the image build
if [ -d $IMAGE_BUILD_PATH ];then
	echo -e "\nYou alardy have the imagebuild,no need it Again\n"
	exit 1
fi

echo "start download source"
wget http://downloads.openwrt.org/attitude_adjustment/12.09/ar71xx/generic/OpenWrt-ImageBuilder-ar71xx_generic-for-linux-i486.tar.bz2
echo "start unpack..."
tar -xvjf OpenWrt-ImageBuilder-ar71xx_generic-for-linux-i486.tar.bz2

echo -e "\n\nwork done,now you should can run build.sh:)"