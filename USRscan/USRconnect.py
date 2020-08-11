file = open("connect.txt","r")
contenue = file.read().split(' ')
file.close()
debut = contenue[0].split(':')
interface = debut[0]
print(interface)
file = open("connect.txt","w")
file.write(interface)
file.close()
