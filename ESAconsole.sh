chemin=$(pwd)
cd
mkdir ESAresult
cd $pwd

echo " _____ ____    _                             _"     
echo "| ____/ ___|  / \   ___ ___  _ __  ___  ___ | |___" 
echo "|  _| \___ \ / _ \ / __/ _ \| '_ \/ __|/ _ \| |/ _ \ "
echo "| |___ ___) / ___ \ (_| (_) | | | \__ \ (_) | |  __/"
echo "|_____|____/_/   \_\___\___/|_| |_|___/\___/|_|\___|"
echo "v0.1 2020"
echo "______________________________________by BiMathAx___"
echo "Voulez-vous installer les apt$ (o/n) : "
read reponse
choix=${reponse^^} # Permet de mettre la réponse en Majuscule
# echo $choix
while [ $choix = O ]; do
	echo ////INSTALATION DES APTS////
	sudo apt install figlet
	sudo apt install cowsay
	sudo apt install net-tools
	sudo apt install fping
	sudo apt install nmap
	sudo apt install git
	sudo apt update

	echo "////INSATLATION DES APTS TERMINE -> répondez n les prochaines fois ////"
	break
done
echo "Bienvenue dans le terminal de ESAconsole, faite esa --help pour obtenir de l'aide"
while [ True ]; do
	read -p '-> ' commande
	com=${commande^^}
	while [ "$com" = "ESA -S" ]; do
		echo LANCEMENT DE USRscan
		cd USRscan
		chmod +x USRscan.sh
		./USRscan.sh
		break
	done
	while [ "$com" = "ESA -P" ]; do
		echo LANCEMENT DE OPT
		cd "OPTscan"
		chmod +x "OPT.sh"
		./OPT.sh
		break
	done
	while [ "$com" = "ESA --HELP" ]; do
			echo "////////////////////////////////////////////////////////"
			echo "ESAconsole est un programme codé par BiMathAx STUDIO."
			echo "Il a pour but de simplifier les actions des pentesters"
			echo "____________________SIMPLIFIER ?______________________"
			echo "Et oui, le programme ./ESAconsole n'est qu'un outil ré-"
			echo "-pertoriant d'autres programme (codé par BiMathAx) qui "
			echo "utilisent, quand à eux, des fonctions deja existantes "
			echo "sur LINUX..."
			echo "La simplification s'effectue lors du lancement des pro-"
			echo "-gramme secondaires, car ils vont AUTOMATISER certaines"
			echo "actions et vont vous fournir le résultat final sous la "
			echo "forme d'un document esthétique..."
			echo 
			echo "____________________Il est ou ?__________________"
			echo "Les résultat (documents finaux) sont dans le dossier "
			echo "ESAresult (qui a été crée dans votre répertoire courant"
			echo
			echo "____________________COMMANDES____________________"
			echo "vous pouvez les ecrire en Majuscule ou en minuscule MAIS"
			echo "nous recommendons la minuscule..."
			echo "	esa -s        | Ouvre l'outil USRscan : qui permet de"
			echo "                | scanner un réseau (qui est connecté  "
			echo "                | ainsi que son nom)  "
			echo
			echo "	esa -v[agr]   | Permet de scanner les vulnérabilité d'"
			echo "                | une ou plusieur adresse ip en utilisant"
			echo "				  | les script arg :"
			echo
			echo "            -vv : Utilise : nmap --script vuln   " 
			echo "            -vvulners : Utilise : nmap --script nmap-"
			echo "							  vulners"
			echo
			echo "	esa -p 		  | Ouvre l'outil OPT (open port) : qui "
			echo "				  | permet de scanner les ports d'un ou de"
			echo "				  | plusieurs pc (adresse ip). OPEN/CLOSE"
			echo
			echo "	exit          | permet de quitter le programme  "
			echo "////////////////////////////////////////////////////////"
			break
	done
	if [ "$com" = "EXIT" ]; then
		break
	fi
done
echo "END->&ù^$2&'4"