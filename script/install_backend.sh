#!/bin/bash
set -x

# ------------------------------------
#Instalación de bakend en la pila lamp
#------------------------------------------

#Actualizamos los repositorios
apt update

#Instalamos Mysql Server

apt install mysql-server -y