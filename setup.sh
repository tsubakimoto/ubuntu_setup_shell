#!/bin/sh

#update and upgrade
sudo apt-get -y update
sudo apt-get -y upgrade

#グローバルメニューを無効にする
sudo apt-get -y remove --purge firefox-globalmenu thunderbird-globalmenu appmenu-gtk appmenu-gtk3 appmenu-qt appmenu-qt5 indicator-appmenu
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides '@a{sv} {"Gtk/ShellShowsAppMenu": <int32 0>}'

#オーバーレイスクロールバーを無効にする
sudo apt-get -y remove overlay-scrollbar

#Ubuntu Web Appsを削除する
sudo apt-get -y remove unity-webapps-common xul-ext-websites-integration

#Ubuntu Oneを削除する
sudo apt-get -y remove ubuntuone-client python-ubuntuone-client python-ubuntuone-storageprotocol

#タイトルバーのボタンを左から右側に移動させる
dconf write /org/gnome/desktop/wm/preferences/button-layout '":minimize,maximize,close"'

#日本語フォルダ名を英語表記にする
env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update

#IME
sudo apt-get -y install ibus-mozc

#chromium
sudo apt-get -y update
sudo apt-get -y install chromium-browser

#ubuntu-tweak
sudo add-apt-repository ppa:tualatrix/ppa
sudo apt-get -y update
sudo apt-get -y install ubuntu-tweak

#git
sudo apt-get -y update
sudo apt-get -y install git-core

#最後にupdate
sudo apt-get -y update
