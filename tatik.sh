trap 'store; exit 1;' 2
threads="20"
r="\033[31;1m"
y="\033[33;1m"
yl="\033[1;33m"
g="\033[0;32m"
gl="\033[32;1m"
b="\033[0;36m"
bl="\033[36;1m"
c="\033[36;1m"
p="\033[0;35m"
o="\033[0m"
cek(){
command -v wget > /dev/null 2>&1 || { echo >&2 "wget belum terinstall ketik >> pkg install wget  .....lalu ketik bash ml"; exit 1; }
command -v pv > /dev/null 2>&1 || { echo >&2 "pv belum terinstall ketik >> pkg install pv  .....lalu ketik bash ml"; exit 1; }
}
be(){
echo -e "$g SUBSCRIBE DULU SEBELUM GUNAKAN TOOLS INI!! "
xdg-open https://youtube.com/channel/UC0Zu58K8BQxNtYusw9iRnxg
banner
}
banner(){
clear
echo -e "$bl _  _ ____ ____ _  _ ___ ____ ___  "
echo -e "$bl |\/| |  | |  | |\ |  |  |  | |  \ "
echo -e "$bl |  | |__| |__| | \|  |  |__| |__/ EMPASS"
echo -e
echo -e "$o Author    : Randyxploit & Hartatik "
echo -e "$o Github    : https://github.com/Randyxploit1"
echo -e "$o Instagram : Randy176"
echo -e "$o----------------------------------------------> "
echo -e "$g KETIK CTRL + Z UNTUK BERHENTI"
echo -e "$o----------------------------------------------> "| pv -qL 600
menu
}
mulai (){
wget https://raw.githubusercontent.com/BiiDev/picek/main/empass.txt -o done
for anjay in $(shuf empass.txt)
do
echo "$anjay"
sleep 0.3
done
}
empas-fresh (){
wget https://raw.githubusercontent.com/BiiDev/picek/main/empas-fresh.txt -o done
for anjayy in $(shuf empas-fresh.txt)
do
echo "$anjayy"
sleep 0.3
done
}
empas-uncheck (){
wget https://raw.githubusercontent.com/BiiDev/picek/main/empas-uncheck.txt -o done
for anjayyy in $(shuf empas-uncheck.txt)
do
echo "$anjayyy"
sleep 0.3
done
}
empas-moontod(){
wget https://raw.githubusercontent.com/BiiDev/picek/main/empas-monton.txt -o done
for anjayyyy in $(shuf empas-monton.txt)
do
echo "$anjayyyy"
sleep 0.3
done
}
function stor() {
if [[ -n "$threads" ]]; then
printf "\n"
printf "\e[1;91m [*] Waiting threads shutting down...\n\e[0m"
sleep 4
fi
}
function store() {
if [[ -n "$threads" ]]; then
printf "\n"
printf "\e[1;91m [*] Memutuskan program tunggu...\n\e[0m"
rm -rf empass
rm -rf done
rm -rf empas-fresh
rm -rf empas-monton
rm -rf empas-uncheck
sleep 2
echo -e "${g}Selesai${o}"
echo -e "${y}  Mau lagi gak ? ${g}║"
read -p $'033[0m ' lagi
if [[ $lagi == 'mau' || $lagi == 'lagi' || $lagi == 'iya' || $lagi == y || $lagi == Y ]]; then
clear
menu
else
exit
fi
fi
}
menu(){
echo -e "${p}"
echo -e "${y}-> ${o}1.${y}${b} Update Script${o}" | pv -qL 600
echo ""
echo -e "${y}-> ${o}2.${y}${b} Cari Empas${o}" | pv -qL 600
echo ""
echo -e "${y}-> ${o}3.${y}${b} Cari Empas Fresh${o}" | pv -qL 600
echo ""
echo -e "${y}-> ${o}4.${y}${b} Cari Uncheck${o}" | pv -qL 600
echo ""
echo -e "${y}-> ${o}5.${y}${b} Cari Empas Moonton${o}" | pv -qL 600
echo ""
read -p $'\033[0;0mPilih:\033[0m ' pilihan
if [[ $pilihan == 1 ]]; then
git pull origin master
exit
elif [[ $pilihan == 2 ]]; then
mulai
elif [[ $pilihan == 3 ]]; then
empas-fresh
elif [[ $pilihan == 4 ]]; then
empas-uncheck
elif [[ $pilihan == 5 ]]; then
empas-moontod
else
echo -e "${r}TOLOLL PILIHAN CUMA 1 2 3 4 5"
sleep 1
banner
menu
fi
}
cek
be
