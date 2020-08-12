import os
def scan(ip) :
	print('IP que lon va scanner : ' + ip)
	file = open("ip.txt","w")
	file.write(ip)
	file.close()
	os.system("./vulners.sh")
	file = open("vulners.txt","r")
	scan = file.read()
	file.close()
	try :
		file = open("NMAPvulners.txt","r")
		contenue = file.read()
		file.close()
	except :
		print("Il n'existe pas de fichier NMAPvulners.txt")
	file = open("NMAPvulners.txt","w")
	try :
		file.write(contenue)
	except :
		print("Il n'y a donc pas de contenue")
	file.write('\n\n\n')
	file.write('$£$ Scan vulners pour : ' + ip)
	file.write('\n\n')
	file.write(scan)
	file.close()
	os.remove("vulners.txt")
	os.remove("ip.txt")
os.remove("NMAPvulners.txt")
i = True
ipliste = []
while i :
	ip = input('Ip : ')
	if str(ip) == "start" :
		for ip in ipliste :
			scan(ip)
		print("Faite : esa -vu -r / pour voir le resultat")
		i = False
	elif str(ip) == "exit" :
		del ipliste
		i = False
	else :
		ipliste.append(ip)
os.remove("choix.txt")
os.system("./finvulners.sh")
