#!/bin/sh

#C++ Compiler
sudo apt-get -y install build-essential

#Apache
cd /usr/local/src
sudo wget http://ftp.meisei-u.ac.jp/mirror/apache/dist//httpd/httpd-2.4.4.tar.gz
sudo tar zxvf httpd-2.4.4.tar.gz

#APR
cd httpd-2.4.4/srclib
sudo wget http://ftp.tsukuba.wide.ad.jp/software/apache//apr/apr-1.4.6.tar.gz
sudo wget http://ftp.tsukuba.wide.ad.jp/software/apache//apr/apr-util-1.5.2.tar.gz
sudo tar zxvf apr-1.4.6.tar.gz
sudo tar zxvf apr-util-1.5.2.tar.gz
sudo mv apr-1.4.6 apr
sudo mv apr-util-1.4.1 apr-util

#PCRE
cd /usr/local/src
sudo wget http://downloads.sourceforge.net/project/pcre/pcre/8.33/pcre-8.33.tar.gz
sudo tar zxvf pcre-8.33.tar.gz
cd pcre-8.33
sudo ./configure
sudo make
sudo make install

#Apache
cd /usr/local/src/httpd-2.4.4
sudo ./configure
sudo make
sudo make install

#update
sudo apt-get -y update
