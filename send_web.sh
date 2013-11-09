# check if have the bin path
if [ ! -d bin/ ];then
	echo -e "\n\nhave nothing to send,try [./build.sh]first...\n\n"
	exit 1
fi

# get the local ip address
LOCALIP=$(curl icanhazip.com 2>/dev/null)
cd bin/
echo -e "\n\n\n"
# kill old server,if have one.
prev_server_pid=$(ps -ef |grep SimpleHTTPServer |grep -v grep | awk '{print $2}')
if [ -z $prev_server_pid ];then
	echo -e "Kill the prev server first...\n"
	kill -9 $prev_server
fi

# just start the server
python -m SimpleHTTPServer&
echo -e "The SimpleHTTPServer has start..." 
echo "you can visit: http://${LOCALIP}:8000"
echo -e "\n\n\n"