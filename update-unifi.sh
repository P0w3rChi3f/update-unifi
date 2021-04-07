#! /bin/sh

FILE=unifi_sysvinit_all.deb

echo "###################################################"
if test -f $FILE;
    then
        echo "Deleting "$FILE
        rm -f $FILE;
    else
        echo $FILE" was not found in the local directory"
        continue
fi

echo ""
echo "###################################################"
echo "Downloading Unifi Controler version "$1
echo ""
wget https://dl.ui.com/unifi/$1/unifi_sysvinit_all.deb
echo "###################################################"
echo "Please be patiant, I am installing version "$1" of your controller software"
echo ""
dpkg -i unifi_sysvinit_all.deb
echo "###################################################"
echo "Version "$1" Unifi controler software has now ben installed"
echo "Enjoy!!!!"