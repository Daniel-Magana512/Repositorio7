#!/bin/bash
set -x

# Accedemos al directorio temporal /tmp
cd /tmp

#Eliminamos el directorio de instalaciones previas
rm -rf iaw-practica-lamp

#Clonamos el repositorio

git clone https://github.com/josejuansanchez/iaw-practica-lamp.git

#Movemos el código fuente de la aplicación
mv /tmp/iaw-practica-lamp/src/* /var/www/html

#Modificamos el propietario y el grupo de los archivos
chown www-data:www-data /var/www/html -R

#Borramos el archivo index.html , para que lo primero que me coja sea el index.php
rm /var/www/html/index.html
