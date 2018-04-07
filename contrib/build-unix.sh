#!/bin/bash
sudo apt-get install -y software-properties-common g++ make automake pkg-config
sudo apt-get install -y build-essential libtool autotools-dev autoconf openssl libssl-dev libevent-dev 
sudo apt-get install -y libboost-all-dev
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update -y
sudo apt-get install -y libdb4.8-dev libdb4.8++-dev
sudo apt-get install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
cd
git clone https://github.com/hetus/bhash.git
cd bhash
./autogen.sh
./configure
make
sudo make install
mkdir ~/.bhash
password=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo '
rpcpassword='$password'
daemon=1
' >> ~/.bhash/bhash.conf