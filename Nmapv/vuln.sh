choix=$(cat choix.txt)
chmod +x fin.sh
while [ $choix = "0" ]; do
	echo "BIENVENUE SUR LE SCRIPT VULN.sh"
	echo "Ce script reprend les fonctions de nmap..."
	echo
	echo "Entre les adresses IP une par une et écrit start pour démarré :"
	echo "1" > choix.txt
	python3 vuln.py
	break
done
while [ $choix = "1" ]; do
	ip=$(cat ip.txt)
	sudo nmap $ip --script vuln > vuln.txt
	break
done
