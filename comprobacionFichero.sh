#!/bin/bash

read -p "Intriduzca una ruta: " ruta

# si la ruta o archivo introducido no existe en el directorio
if [ ! -e $ruta ]; then
	echo "Esta no ruta existe"
	exit 1
fi

# si es un directorio
if [ -d $ruta ]; then
	echo "y es un directorio"
fi

# si es un archivo y tiene permisos de escritura
if [ -f $ruta -a -w $ruta ]; then
	echo "y es un fichero y se puede escribir"
fi
