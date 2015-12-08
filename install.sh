if [ ! $#  = 1 ];then
    echo "no arg!"
    exit
fi

rm -rf tftpboot*
wget $1
tar xvf tftpboot.tar.gz
cd tftpboot/
sudo cp -a * /var/lib/tftpboot/

