#!/bin/bash
# widhisec | JANGAN RECODE TOLONG HARGAI PEMBUAT NYA !
clear;
HIJAU='\033[0;32m'
MERAH='\033[01;31m'
NORMAL='\033[0m'
CYAN='\033[0;36m'
BIRU='\033[0;34m'
PUTIH='\033[1;37m'
BANNER() {
printf "
$NORMAL
╔╦═╦╗╔══╗ (c) 2020 $MERAH
║║║║║║╔╗║ (MYTEAM : Black Coder Crus) $PUTIH
║║║║║║╠╣║ (CREATE BY Mr.Gaming) $BIRU
╚═╩═╝╚╝╚╝ (GENERATOR LINK CHAT WHATSAPP) $CYAN
\n
"
}
BANNER
DATA() {
URL="https://api.whatsapp.com/send?phone=$no&text=${tex}" 
gblk=$(echo -e $URL | tr [:space:] "%20")
echo -n "Langsung Send? (y/n) => "
read send
if [[ $send == y ]];then
termux-open ${gblk}
fi
if [[ $send == n ]]; then
echo -e "Tersaved"
echo "$gblk" >> send.txt
exit 1
fi
}
read -p "Masukkan Nomor Telpon => " no
echo -n "pesan => "
read tex
DATA $no $tex
