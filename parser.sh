#!/bin/bash

lineas=$(wc arti -l | awk '{print $1}')

#sed -n "1p" arti | sed -s "s/\*/<h1>/" | sed -s "s/\*/<\/h1>/"

echo $lineas

cat plantilla_begin.html > output.html

for (( i = 1; i <= $lineas; i++ ))
do
	siguiente=i+1
	anterior=i-1
	lista_siguiente=$(sed -n "${siguiente}p" arti | grep "\-\-")
	lista_anterior=$(sed -n "${anterior}p" arti | grep "\-\-")
	if [ lista_siguiente -n ] then
		if [ lista_anterior -n ] then
			echo "<ul>" >> output.html
		fi
		echo "<li>" >> output.html
		sed -n "${i}p" arti | sed -s "s/\-\-//"
		echo "</li>" >> output.html
		if [ lista_siguiente -n ] then
			echo "</ul>" >> output.html
		fi
	fi
	echo "<p>" >> output.html
	sed -n "${i}p" arti >> output.html
	echo "</p>" >> output.html
done

cat plantilla_end.html >> output.html


#while IFS= read -r line;
#do
#	printf '%s\n' "$line"
#	printf 'a'
#done < arti
