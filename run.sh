#!/bin/bash

clear 

figlet WELLCOME | lolcat
figlet WELLCOME | lolcat
figlet WELLCOME | lolcat
figlet WELLCOME | lolcat
figlet WELLCOME | lolcat
figlet WELLCOME | lolcat
figlet Professor Linux| lolcat
figlet Professor Linux| lolcat
figlet Professor Linux| lolcat
figlet Professor Linux| lolcat
figlet Professor Linux| lolcat
figlet Professor Linux| lolcat
clear
figlet Author DimsBro| lolcat
tput cup 5 44
date | lolcat
echo Choose Numbers [1-20] :
echo -e "\033[34m 1. Install All Meliputi :
net-tools | DHCP Server |PHP |MySQL (database) | phpMyAdmin | DNS Server
NB: semua yang akan di install sudah versi Terbaru
\033[0m"
echo -e "\033[34m  =================IP Address================\033[0m"
echo -e "\033[34m 2. Konfigurasi IP Address\033[0m"
echo -e "\033[34m 3. Restart IP Address\033[0m"
echo -e "\033[34m 4. CEK IP Address\033[0m"
echo -e "\033[34m  ===========Selanjutnya test xp client===========\033[0m"
echo -e "\033[34m  =====================Firewall====================\033[0m"
echo -e "\033[34m 5. Konfigurasi Firewall\033[0m"
echo -e "\033[34m 6. Konfigurasi Firewall 2\033[0m"
echo -e "\033[34m 7. Konfigurasi Firewall 3\033[0m"
echo -e "\033[34m 8. Konfigurasi Firewall 4 *nat\033[0m"
echo -e "\033[34m 9. Restart Firewall\033[0m"
echo -e "\033[34m  =================DHCP Server===============\033[0m"
echo -e "\033[34m 10. Konfigurasi DHCP Server 1\033[0m"
echo -e "\033[34m 11. Konfigurasi DHCP Server 2\033[0m"
echo -e "\033[34m 12. Restart DHCP Server\033[0m"
echo -e "\033[34m  =================WEB Server================\033[0m"
echo -e "\033[34m 13. Hapus file index.html\033[0m"
echo -e "\033[34m 14. New HTML\033[0m"
echo -e "\033[34m  =================More================\033[0m"
echo -e "\033[34m rs. Restart Server\033[0m"
echo -e "\033[34m ss. Shutdown Server\033[0m"
echo -e "\033[34m itm. install tools More...\033[0m"
echo -e "\033[34m e. exit\033[0m"

read -p "[Prof.Linux@DimsBro]Masukkan Angka/Huruf : " pil;



if [ $pil = 1 ]; 
then
apt update
apt install net-tools -y
apt install isc-dhcp-server -y
apt install php -y
apt install mysql-server -y
apt install phpmyadmin -y 
apt install bind9 -y
echo Done
fi; 


if [ $pil = 2 ];
then
nano /etc/netplan/00-installer-config.yaml
fi;


if [ $pil = 3 ];
then
netplan apply
fi;


if [ $pil = 4 ];
then
ifconfig
fi;


if [ $pil = 5 ];
then
ufw enable
ufw logging on
iptables --flush
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain
fi;


if [ $pil = 6 ];
then
nano /etc/default/ufw
fi;


if [ $pil = 7 ];
then
nano /etc/ufw/sysctl.conf
fi;


if [ $pil = 8 ];
then
nano /etc/ufw/before.rules
fi;


if [ $pil = 9 ];
then
ufw disable && ufw enable
fi;


if [ $pil = 10 ];
then
sudo nano /etc/dhcp/dhcpd.conf
fi;


if [ $pil = 11 ];
then
sudo nano /etc/default/isc-dhcp-server
fi;


if [ $pil = 12 ];
then
sudo service isc-dhcp-server restart
fi;


if [ $pil = 13 ];
then
sudo rm /var/www/html/index.html
fi;


if [ $pil = 14 ];
then
sudo nano /var/www/html/index.html
fi;








if [ $pil = rs ];
then
sudo reboot
fi;

if [ $pil = ss ];
then
sudo poweroff
fi;

if [ $pil = itm ];
then

cowsay -f eyes "DimsBro" | lolcat
echo "    <=====================[]====================>" | lolcat
echo "    <=====[       Created By DimsBro      ]=====>" | lolcat
echo  "    <=====[  Contact Me : +6285730151928  ]=====>" | lolcat
echo "    <=====================[]====================>" | lolcat
fi;



if [ $pil = e ];
then
echo jangan lupa jaga kesehatanmu ya! | lolcat
echo "thank you[>_<]"  | lolcat

else
   echo "Maaf, tidak tersedia"
   exit 1
fi