#!/usr/bin/env bash

yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel &&
wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz &&
mkdir -p /usr/local/python3.6 &&
tar -xvf Python-3.6.5.tgz &&
cd Python-3.6.5 &&
./configure --prefix=/usr/local/python3.6 &&
make &&
make install &&
ln -s /usr/local/python3.6/bin/python3.6 /usr/local/bin/python3 &&
ln -s /usr/local/python3.6/bin/pip3.6 /usr/local/bin/pip3 &&
pip3 install --upgrade pip &&
echo "python3 installed successfullly!"
