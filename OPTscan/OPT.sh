chmod +x OPTscan.sh
chmod +x fin.sh
echo "    ,o888888o.     8 888888888o 8888888 8888888888 "
echo " . 8888      88.   8 8888     88.     8 8888 "       
echo ",8 8888        8b  8 8888      88     8 8888 "       
echo "88 8888         8b 8 8888     ,88     8 8888 "       
echo "88 8888         88 8 8888.   ,88'     8 8888 "       
echo "88 8888         88 8 888888888P'      8 8888 "       
echo "88 8888        ,8P 8 8888             8 8888 "       
echo " 8 8888       ,8P  8 8888             8 8888 "       
echo "   8888     ,88'   8 8888             8 8888 "       
echo "     8888888P'     8 8888             8 8888 "  
echo "_______________________________ by BiMathAx______"
echo
echo "Voulez-vous voir le manuel ? (o/n)"
read manuel
while [ $manuel = o ]; do
	echo "Cette extension permet de scanner les ports ouverts (TCP,SYN,UDP,XMAS et NULL) et de créer un document esthétique avec tous les port$ ouverts"
	break
done
python3 OPT_suite.py
echo "Nous venons de terminer le/les scan(s) des ports : Scan_ports.txt"
echo "Voulez voire le résultat ? (y/n)"
read choix
while [ $choix = y ]; do
	echo _________________________________________________
	
	cat Scan_ports.txt
	
	echo _________________________________________________
	break
done