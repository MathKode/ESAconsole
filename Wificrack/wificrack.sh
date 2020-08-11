figlet -f digital wificrack
echo "by BiMathAx STUDIO"
echo
read -p 'Voulez-vous voire le manuel (o/n) : ' commande
com=${commande^^}
while [ $com =  'O' ]; do
	echo "Ce code est craqueur wifi"
	echo "Il fonctionne en utilisant la fonction bruteforce"
	echo 
	echo "ATTENTION, il ne fonctionne pas en VM (car il faut"
	echo "disposer d'une carte wifi indépendante"
	break
done
sudo nmcli dev wifi
read -p "SSID : " nom
"$nom" > info.txt
python3 wificrack.py