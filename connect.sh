#!/bin/bash
#I kind new to shell,so it's bascicly just can work
#not mush cool:)
#i hope simple is a beautify,less is more

#the folder we use to check,so we know 
CHECKOPENWRT="../feeds"
PARENTFOLDER=$(dirname $(pwd))

echo -e "Let's start connect with the source!\n"

# todo : check if we are in right folder to start self
if [ ! -f connect.sh ];then
	# no,i only run on my directly
	echo -e "\nError: Not Run in Right Folder Or file has been lost!"
	echo "plz run in my own folder,and try download me again!"
	echo -e "you can try again!\n"
	exit 1
fi

echo "start check are we in openwrt folder"
#check are we in the openwrtwrt folder
if [ ! -d "$CHECKOPENWRT" ];then 
	# say sth so we cant do busnises here
	echo -e "\n Error:can't found [$CHECKOPENWRT] folder in parent directory!"
	echo -e "plz make sure put me in the Openwrt folder!"
	echo -e "you may try it again!\n"
	exit 1
else
	echo -e "check openwrt folded sucess,let us start connect!\n"
fi

# check if alardy update the feed
if [ ! -d ../feeds/packages/utils ];then
	# oh we dont have feeds here:(
	echo "i can't found [utils] folder in feeds[../feeds/packages/utils]!"
	echo "you may need try [./scripts/feeds update] first!"
	echo -e "plz try again!\n"
	exit 1
fi

# check the files folder
if [ -h ../files ];then
	# if is a symble exist
	echo "you alardy link the [../files] folder!"
	echo -e "i will remove it!\n"
	rm -rf ../files

elif [ -e ../files -o -f ../files ];then 
	# see if there a alardy really folder exist
	echo "you alardy mod the [../files] floder!"
	echo -e "i will move it to files_bak!\n"
	mv -f ../files ../files_bak
fi

# check the restorefactory folder
if [ -e ../feeds/packages/utils/restorefactory -o -h ../feeds/packages/utils/restorefactory ];then
	# if is a symble exist
	echo "you alardy have the [restorefactory] package in feeds!"
	echo -e "i will remove it!"
	rm -rf ../feeds/packages/utils/restorefactory && echo -e "remove it done!\n" || echo "remove faild!\n"

fi

# check if config file exist
if [ -e ../slboat.config -o -h ../slboat.config ];then
	# if it's exist anyway,backup it
	echo "you alardy have [slboat.config]"
	echo -e "i will just move it\n"	
	# todo:may need know if suess
	mv ../slboat.config ../slboat.config_bak
fi

echo "all the file check is done!"
echo "start link all the file now!"
echo 

ln -s $(pwd)/files $PARENTFOLDER/files
ln -s $(pwd)/build_config/slboat.config $PARENTFOLDER/slboat.config
ln -s $(pwd)/mod_packges/restorefactory $PARENTFOLDER/feeds/packages/utils/restorefactory

echo "everything done!"
echo "just into [make menuconfig],load config file[slboat.conf]"
echo "Then start compile!"
echo -e "Good Luck!\n"




