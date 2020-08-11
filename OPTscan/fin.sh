#LE SCRIPT FIN PERMET DE PRENDRE LE RESULTAT ET DE RANGER UNE COPIE DANS LE DOSSIER ESAresult
racine=$(pwd)

dossier="Scan_ports.txt"
cd
cd ESAresult
chemin=$(pwd)
cp $racine"/"$dossier $chemin
