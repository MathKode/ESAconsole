import time
import os
	
def execute(ip) :
	
	print("L'ip que l'on va scanner est : " + str(ip))
	file3 = open("OPTip2.txt","w")
	file3.write(ip)
	file3.close()
	os.system('./OPTscan.sh')
	#print("Le SCAN est terminé, MISE EN FORME EN COURS")
	file = open("TCP.txt","r")
	tcp = file.read().split('\n')
	file.close()
	#print(tcp)
	file = open("SYN.txt","r")
	syn = file.read().split('\n')
	file.close()
	#print(syn)
	file = open("UDP.txt","r")
	udp = file.read().split('\n')
	file.close()
	#print(udp)
	file = open("XMAS.txt","r")
	xmas = file.read().split('\n')
	file.close()
	#print(xmas)
	file = open("NULL.txt","r")
	null = file.read().split('\n')
	file.close()
	#print(null)
	
	#tcp
	fin = len(tcp)
	fin = fin - 3
	tcpfinal = tcp[5:fin]
	#print(tcpfinal)
	
	#syn
	fin = len(syn)
	fin = fin - 3
	synfinal = syn[5:fin]
	#print(synfinal)
	
	#udp
	if str(udp) == "PASSE" :
		print("vous avez passé le scan udp")
	else :
		fin = len(udp)
		fin = fin - 3
		udpfinal = udp[5:fin]
		#print(udpfinal)
	
	#xmas
	fin = len(xmas)
	fin = fin - 3
	xmasfinal = xmas[5:fin]
	#print(xmasfinal)
	
	#null
	fin = len(null)
	fin = fin - 3
	nullfinal = null[5:fin]
	#print(nullfinal)
	
	tcpsyn = tcpfinal + synfinal
	udpxmas = udpfinal + xmasfinal
	tcpsynudpxmas = tcpsyn + udpxmas
	final = tcpsynudpxmas + nullfinal
	#print(final)
	finall = list(set(final))
	
	#print(finall)
	
	finall.sort()
	#print(finall)
	#ecriture du doc final
	
	file = open("Scan_ports.txt", "r")
	contenue = file.read()
	file.close()
	print(final)
	file = open("Scan_ports.txt", "w")
	file.write(contenue)
	file.write('\n')
	file.write('Scan pour -> ' + ip)
	file.write('\n')
	scanfinal = "\n".join(finall)
	file.write(scanfinal)
	file.write('\n\n')
	file.close()
	
	os.remove("TCP.txt")
	os.remove("UDP.txt")
	os.remove("SYN.txt")
	os.remove("NULL.txt")
	os.remove("XMAS.txt")
	os.remove("OPTip2.txt")

	os.system("./fin.sh")
	

	

file = open("Scan_ports.txt", "w")
file.write('\n')
file.close()
global iplist
iplist = []

print("Bienvenue sur le script OPT, veuillez rentrer les addresses (ou l'adresse) ip à scanner 1 PAR 1 ")
print("Ecrivez start pour lancer le scan")
t = 1
tour = 1
while t == 1 :
	choix = input("IP n°" + str(tour) + " : ")
	if str(choix).lower() == "start" :
		for ip in iplist :
			execute(ip)
			
		t = 0
	else :
		iplist.append(choix)
	tour = tour + 1




	
	
	
		
