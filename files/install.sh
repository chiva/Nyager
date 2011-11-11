#!/bin/ash

uci set wireless.wifi0.disabled=0
uci commit wireless && wifi
uci set wireless.@wifi-iface[0].txpower=18
uci commit wireless

echo "address=/#/192.168.1.1" > /etc/dnsmasq.conf

mv jasager /etc/init.d/jasager
chmod +x /etc/init.d/jasager

mv bg.gif index.html mp3player.swf nyan-looped.mp3 snyan.gif stylesheet.css slkscr-webfont.eot slkscr-webfont.ttf slkscr-webfont.woff slkscr-webfont.svg favicon.ico /www/

echo "E404:/www/index.html" > /etc/nyhttpd.conf
mv httpd /etc/init.d/httpd
chmod +x /etc/init.d/httpd

rm install.sh
echo "Done - Rebooting!"
reboot