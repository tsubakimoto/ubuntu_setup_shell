#!/bin/sh

#update and upgrade
sudo apt-get update
sudo apt-get upgrade

#グローバルメニューを無効にする
sudo apt-get remove --purge firefox-globalmenu thunderbird-globalmenu appmenu-gtk appmenu-gtk3 appmenu-qt appmenu-qt5 indicator-appmenu
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides '@a{sv} {"Gtk/ShellShowsAppMenu": <int32 0>}'

#オーバーレイスクロールバーを無効にする
sudo apt-get remove overlay-scrollbar

#Ubuntu Web Appsを削除する
sudo apt-get remove unity-webapps-common xul-ext-websites-integration

#Ubuntu Oneを削除する
sudo apt-get remove ubuntuone-client python-ubuntuone-client python-ubuntuone-storageprotocol

#タイトルバーのボタンを左から右側に移動させる
dconf write /org/gnome/desktop/wm/preferences/button-layout '":minimize,maximize,close"'

#日本語フォルダ名を英語表記にする
env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update

#IME
sudo apt-get install ibus-mozc

#chromium
sudo apt-get update
sudo apt-get install chromium-browser

#ubuntu-tweak
sudo add-apt-repository ppa:tualatrix/ppa
sudo apt-get update
sudo apt-get install ubuntu-tweak

#git
sudo apt-get update
sudo apt-get install git-core
