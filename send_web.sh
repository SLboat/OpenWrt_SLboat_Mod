LOCALIP=$(curl ifconfig.me)
cd bin/
python -m SimpleHTTPServer&
echo -e "\n\n\n"
echo "the SimpleHTTPServer& has start..."
echo "try visit:$(LOCALIP):8000"