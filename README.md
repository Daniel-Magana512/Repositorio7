# Práctica 7: Arquitectura de una aplicación web LAMP en dos niveles

Vamos a configurar dos máquinas virtuales para que en una se encargue de gestionar las peticiones webs y la otra la base de datos.

La arquitectura estará formada por:

* **Una capa de front-end, formada por un servidor web con Apache HTTP Server.**
* **Una capa de back-end, formada por un servidor MySQL.**

## Primeros pasos

Tenemos que hacer **dos grupos** uno es para el front-end y el otro grupo back-end es para el servidor de mysql.

Pondremos las IP en el grupo que le corresponda, los grupos que definamos aquí, tendremos que llamarlos en los archivos con extensión **.yml** para decirles que esos equipos queremos que se apliquen las condiciones definidas.

![](./fotos/Captura.PNG)

## Archivos de las Variables

Creo un archivo con las variables que voy a definir, así no tengo que crearlas varias veces.

![](./fotos/foto_2.PNG)

* **DB_HOST_PRIVATE_IP** es la IP privada de mysql que usaremos más adelante.

* **DB_NAME** es el nombre de la base de datos.

* **DB_USER** Es el nombre de los usuarios de la base de datos.

* **DB_PASS** es la contraseña de la base de datos.

Las siguientes lineas es para crear una lista que me instale PHP y sus extensiones (esto lo utilizaremos para el servidor de apache).

## Explicación de front-end (Instalación)

*Voy a explicar la instalación que requiere **front-end** , para atender peticiones*

![](./fotos/foto_3.PNG)

Llamo al grupo generado en el **invetario** que será para los sistemas que pertenezcan a **front-end**

* La primera acción que haga , **quiero que me busque las variables que he geneado en el archivo variables.yml**

* **Le digo que me actualice los repositorios.**

* **Instalación el servidor de apache**

* **Importante, ahora usaremos la variables que he declarado en el fichero , que son los paquetes y extensiones de php**

* **Por último, reiniciamos el servidor de apache**

## Explicación de back-end (Instalación)

Recordar que esta parte es dedicado al servidor de mysql.

![](./fotos/foto_4.PNG)


Declaramos que el grupo es **bak**

* **Actualizamos los repositorios.**

* **Instalamos mysql.**

Con la instalación de mysql, se nos generará un archivo que tendremos que modificar , para que no nos rechaze las conexiones y acepte conexiones desde cualquier interfaz.

* **Por defecto está la dirección 127.0.0.1 que es para **localhost** habrá que reemplazar por 0.0.0.0, ponemos la ruta completa del directorio donde esté ubicado el archivo.**

* **Reiniciamos el servidor de apache**


## Explicación de front-end (Configuración)

Declaramos al grupo que le corresponde en este caso es para **front**

![](./fotos/foto_5.PNG)

* **Llamamos a los archivos de las variables**

* **Voy a hacer un git clone del repositorio del profesor donde estará el archivo donde podremos añadir información a la base de datos desde el navegador, aunque antes intentaré eliminarlo en el caso de que esté en el equipo**

* **Movemos los archivos de src al directorio /var/www/html**

Configuramos las variables para la base de datos dentro del archivo config.php que está en el direcotrio /var/www/html/

* **DB_HOST_PRIVATE_IP** tendrá la ip privada de mysql (del servidor), le decimos que me busque el carácter localhost dentro del archivo y que me lo reemplace por esta variable.

* **DB_NAME** Ponemos el nombre de la base de datos que le hemos dicho en el archivo de las variables, el contenido de esa variable se insertará al archivo config.php en el lugar de lamp_db.

* **