#!/bin/bash



Fim="\e[0m"
Inicio="\e[41;1;37m"
vermelho="\e[0;31m"
branco="\e[01;37m"
verde="\e[0;32m"
azul="\e[0;34m"
purple="\e[01;35m"
cyan="\e[1;36m"
cyann="\e[0;36m"
vermelhoClaro="\e[01;31m"
verdeClaro="\e[01;32m"
azulClaro="\e[01;34m"
Cblue="\e[44;1;37m"
purpleClaro="\e[01;35m"
cyanClaro="\e[01;37m"
Inicio="\e[0;41m"
verdeB="\e[0;42m"
purbleB="\e[0;45m"
cyanB="\e[0;46m"
vermelhoC="\e[01;41m"
verdeC="\e[01;42m"
azulC="\e[30;44m"
purpleC="\e[01;45m"
TcyanC="\e[34;45m"
TcyanB="\e[30;47m"
green="\e[0;34m"
okegreen="\e[92m"
lightgreen="\e[1;32m"
white="\e[1;37m"
red="\e[1;31m"
yellow="\e[1;33m"
BlueF="\e[1;34m"

echo -e "$azul
|$verde[]==================================[]$azul|
|$verde[]$white        SPIRNADS FLACKS By BL4CK$verde  []$azul|
|$verde[]==================================[]$azul|$Fim"
echo -e "$azul
|$verde[]==================================[]$azul|
|$verde[]$white        Wordlist com Crunch$verde       []$azul|
|$verde[]==================================[]$azul|$Fim"




#SEGUNDA HM
unpute() {
read -p "Minimo de caracteres: " min
read -p "Maximo de caracteres: " max
read -p "Caracteres: " car
read -p "Nome da Wordlist: " nome

echo -e "Gerando a Wordlist $nome.txt..."
sleep 1.2
crunch $min $max $car > /root/$nome.txt


echo -e "
 =====================================
|    Wordlist gerada com sucesso!!    |
 =====================================
Informacoes sobre a Wordlist:
Minimo de caracteres: $min           
Maximo de caracteres: $max               
Nome da Wordlist: $nome.txt                        
Pasta local: /GNURoot/home             
---------------------------------------
"
}




#PRIMEIRA HM
echo -e "$verde"
echo -e "Voce precisa ter o crunch instalado!$Fim"
echo "$cyan"
read -p "Voce tem o crunch instalado? s/n: " SN

echo -e "$Fim"
if [ "$SN" = "n" ]; then
echo -e "$Fim"
echo -e "Instalando o crunch..."
apt-get install crunch
unpute
fi

if [ "$SN" = "s" ]; then
echo -e " "
unpute
fi

if [ -z "$SN" ]; then
echo -e "Voce nao digitou nada!"
exit
fi
#By BL4CK
