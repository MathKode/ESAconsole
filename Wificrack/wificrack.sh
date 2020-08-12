figlet -f digital wificrack
echo "by BiMathAx STUDIO"
echo
echo "Ce code est craqueur wifi"
echo "Il fonctionne en utilisant la fonction bruteforce"
echo 
echo "ATTENTION, il ne fonctionne pas en VM (car il faut"
echo "disposer d'une carte wifi indépendante"
ifconfig -s 
read -p 'Quelle est le nom de l Iface (wlp2s0,...) : ' interface
echo "$interface" > interface.txt
iwlist $interface scan | grep ESSID
read -p "ESSID (sans les guillemets) : " nom
echo "$nom" > info.txt
python3 wificrack.py
