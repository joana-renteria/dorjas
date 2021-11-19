#!/bin/bash

lineas=$(wc arti -l | awk '{print $1}')

#sed -n "1p" arti | sed -s "s/\*/<h1>/" | sed -s "s/\*/<\/h1>/"

echo $lineas

cat plantilla_begin.html > output.html

for f in ./*.txt; do
	cat plantilla_begin.html > output/"$f".html
	cat plantilla_end.html >> output/"$f".html

	for (( i = 1; i <= $lineas; i++ ))
	do
		siguiente=i+1
		anterior=i-1
		lista_siguiente=$(sed -n "${siguiente}p" arti | grep "\-\-")
		lista_anterior=$(sed -n "${anterior}p" arti | grep "\-\-")
	
		headr=$(sed -n "${i}p" arti | grep "#[a-z]*#")
		headrs=$(sed -n "${i}p" arti | grep "##[a-z]*##")
	
		echo $i
	
		if [ ${#headr} -g 0 ]
		then
			echo ${#headr}
			if [ ${#headrs} -g 0 ]
			then
				echo $headrs
				echo "<h2>" >> output.html
				sed -n "${i}p" arti | sed -s "s/##//" >> output.html
				echo "</h2>" >> output.html
			else
				echo "c"
				echo "<h1>" >> output.html
				sed -n "${i}p" arti | sed -s "s/#//" >> output.html
				echo "</h1>" >> output.html
			fi
		else
			echo "d"
			echo "<p>" >> output.html
			sed -n "${i}p" arti >> output.html
			echo "</p>" >> output.html
		fi
	done
done
