chmod +x fin.sh
chmod +x USRscan_erreur.sh
echo ________________________________________________
echo 'm    m  mmmm  mmmmm   mmmm    mmm    mm   mm   m'
echo '#    # #"   " #   "# #"   " m"   "   ##   #"m  #'
echo '#    # "#mmm  #mmmm" "#mmm  #       #  #  # #m #'
echo '#    #     "# #   "m     "# #       #mm#  #  # #'
echo '"mmmm" "mmm#" #    " "mmm#"  "mmm" #    # #   ##'
echo __________________________________by BiMathAx___
echo

langue="fr"
while [ $langue = fr ]
do
	echo 'Bienvenue sur le script USRscan 2020!!!'
	echo ''
	echo 'Il vous permet de scanner votre réseau :-)'
	echo 'Voulez-vous la documentation ? (o/n)'
	read doc
	
	while [ $doc = o ]; do
		echo 'Ce script est composé de 4 phases :'
		echo '	-1 : trouver l adresse du reseau (ifconfig)'
		echo '	-2 : trouver toutes les ip$ des pc$ connectés au réseau (fping -a -g adressedébut adressefin)'
		echo '	-3 : trouver le nom des pc$ connectés au réseau (fping -a -n -g adressedébut adressefin'
		echo '	-4 : faire la liaison entre les noms et les ip$ (dans 1 seul fichier final grâce au code python)'
		break
	done
	
	echo 'Phase 1'
	echo 'Tu es connecté par cable ou par wifi (c/w) :'
	read connection
	while [ $connection = w ]; do
		connect=$(ifconfig | sed -n 1p > connect.txt)
		python3 USRconnect.py
		interface=$(cat connect.txt)
		ip=$(ifconfig $interface | sed -n 2p | cut -c14-23)
		ipdebut=$ip"0"
		ipfin=$ip"254"
		echo 'Phase 2 : prend du temps...'
		listip=$(fping -a -g $ipdebut $ipfin > ip.txt)
		echo $listip
		echo 'Phase 3 : prend du temps ...'
		listnom=$(fping -a -n -g $ipdebut $ipfin > nom.txt)
		python3 USRscan.py
		break
	done
	while [ $connection = c ]; do
		connect=$(ifconfig | sed -n 1p > connect.txt)
		python3 USRconnect.py
		interface=$(cat connect.txt)
		ip=$(ifconfig $interface | sed -n 2p | cut -c14-23)
		ipdebut=$ip"0"
		ipfin=$ip"254"
		echo 'Phase 2 : prend du temps...'
		listip=$(fping -a -g $ipdebut $ipfin > ip.txt)
		echo $listip
		echo 'Phase 3 : prend du temps ...'
		listnom=$(fping -a -n -g $ipdebut $ipfin > nom.txt)
		python3 USRscan.py
		break
	done
	
	break
done



