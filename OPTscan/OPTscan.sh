#récupere l'adresse ip qu'il faut scanner
ip=$(cat OPTip2.txt)
echo Les scans qui vont suivre risque de prendre du temps 
echo _______________________________________________
echo SCAN TCP ...
echo Vous voulez scanner tous les ports ou seulement les plus utilisés ? t/u
read choix
if [ $choix = t ]
then	
	sudo nmap -sT -p- -Pn $ip > TCP.txt
else
	sudo nmap -sT -Pn $ip > TCP.txt
fi

echo SCAN SYN ...
echo Vous voulez scanner tous les ports ou seulement les plus utilisés ? t/u
read choix
if [ $choix = t ]; then
	sudo nmap -sS -p- -Pn $ip > SYN.txt
else
	sudo nmap -sS -Pn $ip > SYN.txt
fi
	
echo "SCAN UDP (LE PLUS LONG)..."
echo Vous voulez scanner tous les ports, seulement les plus utilisés ou ne rien faire /car c est le plus long/ ? t/u/r
read choix
if [ $choix = t ]; then
	sudo nmap -sU -p- -Pn $ip > UDP.txt
elif [ $choix = r ];then
	echo "PASSE" > UDP.txt
else
	sudo nmap -sU -Pn $ip > UDP.txt
fi

echo SCAN XMAS ...
echo Vous voulez scanner tous les ports ou seulement les plus utilisés ? t/u
read choix

if [ $choix = t ]; then	
	sudo nmap -sX -p- -Pn $ip > XMAS.txt
else
	sudo nmap -sX -Pn $ip > XMAS.txt
fi
	
echo LE DERNIER : SCAN NULL ...
echo Vous voulez scanner tous les ports ou seulement les plus utilisés ? t/u
read choix

if [ $choix = t ]
then	
	sudo nmap -sN -p- -Pn $ip > NULL.txt
else
	sudo nmap -sN -Pn $ip > NULL.txt
fi
