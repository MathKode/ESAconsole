import os
import time

global list_nom

def gestionerreur(ip,nom,element) :
	print('GESTIONNAIRE D ERREURS')
	doc = open("ERip.txt","w")
	doc. write(ip)
	doc.close()
	doc = open("ERnom.txt","w")
	doc. write(nom)
	doc.close()
	os.system("./USRscan_erreur.sh")
	doc = open("ERverif.txt","r")
	nomverif = doc.read().split(' ')
	doc.close()
	
	del nomverif[-1]
	del nomverif[-1]
	
	final = ''.join(nomverif)
	
	print("L'ip " + ip + "a comme nom " + nom + " avant verification!")
	list_nom[element] = str(final)
	print("L'ip " + ip + "a comme nom " + final + "apres verification!")
	#print(list_nom)
	os.remove("ERip.txt")
	os.remove("ERnom.txt")
	os.remove("ERverif.txt")
	os.system("./fin.sh")

print("Phase 4 : codée en python")
file = open("ip.txt", "r")
list_ip = file.read().split('\n')
file.close()

file = open("nom.txt","r")
list_nom = file.read().split('\n')
file.close()

#gestion d'erreur
tour = 0
while tour < len(list_ip) - 1 :
	gestionerreur(list_ip[tour],list_nom[tour],tour) 
	tour = tour + 1
print("\n________________________________________________\n")
tour = 0
file = open("USRscanFI.txt","w")
while tour < len(list_ip) - 1 :
	file.write(list_ip[tour] + " -> " + list_nom[tour] + "\n\n")
	tour = tour + 1
file.close()
print("FINALISATION...")
print("Voulez-vous supprimer les fichiers tierces ? Do you want to delete the useless files ?")
choix = input("O/N : ")
if choix.upper() == "N" :
	print("Choix executé (ras)")
else :
	os.remove("ip.txt")
	os.remove("nom.txt")
	os.remove("connect.txt")
	print("Choix executé (supp)")
print("______________________________________________")
print("")
print("Le résultat se trouve dans le fichier USRscanFI.txt")
print("")
time.sleep(1)
print("______________________________________________")
choix = input('Voulez-vous voire le resultat ? (y/n) : ')
if choix.upper() == "Y" :
	os.system("cat -n USRscanFI.txt")
print('END -> %*ù£ǜ£ù$ǜ$ù*$ù)à8à_ç$')
