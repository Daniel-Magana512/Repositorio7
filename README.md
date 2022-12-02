# Práctica 7: Arquitectura de una aplicación web LAMP en dos niveles

Vamos a configurar dos máquinas virtuales para que en una se encargue de gestionar las peticiones webs y la otra la base de datos.

La arquitectura estará formada por:

* **Una capa de front-end, formada por un servidor web con Apache HTTP Server.**
* **Una capa de back-end, formada por un servidor MySQL.**

# Primeros pasos

Tenemos que hacer **dos grupos** uno es para el front-end y el otro grupo back-end es para el servidor de mysql.

Pondremos las IP en el grupo que le corresponda, los grupos que definamos aquí, tendremos que llamarlos en los archivos con extensión **.yml** para decirles que esos equipos queremos que se apliquen las condiciones definidas.

![](./fotos/Captura.PNG)

# Archivos de las Variables

Creo un archivo con las variables que voy a definir, así no tengo que crearlas varias veces.

![](./fotos/foto_2.PNG)

* **DB_HOST_PRIVATE_IP** es la IP privada de mysql que usaremos más adelante.

* **DB_NAME** es el nombre de la base de datos.

* **DB_USER** Es el nombre de los usuarios de la base de datos.

* **DB_PASS** es la contraseña de la base de datos.

Las siguientes lineas es para crear una lista que me instale PHP y sus extensiones (esto lo utilizaremos para el servidor de apache).




