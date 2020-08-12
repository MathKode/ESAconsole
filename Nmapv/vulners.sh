choix=$(cat choix.txt)
chmod +x finvulners.sh
while [ $choix = "0" ]; do
	echo "BIENVENUE SUR LE SCRIPT VULNERS.sh"
	echo ////////////////////////////////////////////////////////
	echo INSTALATION DE NMAP-VULNERS
	git clone https://github.com/vulnersCom/nmap-vulners.git
	echo ////////////////////////////////////////////////////////
	echo "Ce script reprend les fonctions de nmap..."
	echo
	echo "Entre les adresses IP une par une et écrit start pour démarré :"
	echo "1" > choix.txt
	python3 vulners.py
	break
done
while [ $choix = "1" ]; do
	ip=$(cat ip.txt)
	sudo nmap --script nmap-vulners -sV $ip > vulners.txt
	break
done
