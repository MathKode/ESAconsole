"""
file = open("info.txt","r")
nom = file.read()
file.close()
print("Craqueur PYTHON")
"""
find = input('mot de passe : ')

lettre = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

nombre = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]

i = True
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
	print(mot, end="\r")
	if mot == find :
		i = False
print('le mot de passe est : ' + mot )