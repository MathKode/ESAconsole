ip=$(cat ERip.txt)
nom=$(cat ERnom.txt)
nomverif=$(fping -n $ip)
echo $nomverif > ERverif.txt
