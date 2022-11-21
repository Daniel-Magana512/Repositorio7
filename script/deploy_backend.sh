#!/bin/bash
set -x

#Variables de configuración
#---------------------------------------------


DB_NAME=lamp_db
DB_USER=lamp_user
DB_PASSWORD=lamp_pass

#Creación de la base de datos
#-------------------------------
#Creación de la base de datos y usuario de la bd
mysql -u root <<< "DROP DATABASE IF EXISTS $DB_NAME"
mysql -u root <<< "CREATE DATABASE $DB_NAME CHARACTER SET utf8mb4"

mysql -u root <<< "DROP USER IF EXISTS $DB_USER@'%'"
mysql -u root <<< "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD'"
mysql -u root <<< "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%'"


# Accedemos al directorio temporal /tmp
cd /tmp

#Eliminamos el directorio de instalaciones previas
rm -rf iaw-practica-lamp

#Clonamos el repositorio

git clone https://github.com/josejuansanchez/iaw-practica-lamp.git

#Para importar la base de datos < /tmp/iaw-practica-lamp/db/database.sql
mysql -u root < /tmp/iaw-practica-lamp/db/database.sql