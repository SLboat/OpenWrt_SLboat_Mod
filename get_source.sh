IMAGE_BUILD_PATH="./OpenWrt-ImageBuilder-ar71xx_generic-for-linux-i486"

# check if have the image build
if [ -d $IMAGE_BUILD_PATH ];then
	echo -e "\nYou alardy have the imagebuild,no need it Again\n"
	exit 1
fi

echo "start download source"
wget http://downloads.openwrt.org/barrier_breaker/14.07/ar71xx/generic/OpenWrt-ImageBuilder-ar71xx_generic-for-linux-x86_64.tar.bz2 
echo "start unpack..."
tar -xvjf OpenWrt-ImageBuilder-ar71xx_generic-for-linux-x86_64.tar.bz2 

echo -e "\n\nwork done,now you should can run build.sh:)"
