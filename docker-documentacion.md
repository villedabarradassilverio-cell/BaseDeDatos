# documentacion de contenido docker de sistemas gestores de base de datos 

! [imagen Docker](./img/imagen_docker.png)


## Contenedor de tutorial de Docker
docker pull docker/getting-started 
docker run -d -p 80:80 docker/getting-started
- -d detach (el proceso del contenedor se ejecuta en background)
- -p (port, publish)(Mapea el puerto)
- docker/getting-started(Nombre del ) 
## contenedor del DBMS MariaBD
docker pull mariadb:lts-ubi9
## contenedor de MariaDB sin volumen
docker run --name ServerMariaDBG2 -e MARIADB_ROOT_PASSWORD=123456 \
-d -p 3345:3306 e0236

## contenedor de mariadb con volumen
docker run --name ServerMariaDBG2 -e MARIADB_ROOT_PASSWORD=123456 \
-d -v v-mariadbg2:/var/lib/mysql  -p 3345:3306 e0236


## comandos Docker
| Comando  | Descripcion |
| :--- | :--- |
| docker pull | **Descarga una imagen de DockerHub** | [Docker Hub](http://hub.docker.com) |
| docker images | **Visualisar las imagenes que se encuentran en el docker** |
| docker ps | **Visualisar todos los contenedores que se encuentran ensendidos** |
| docker ps -a | **Visualisa todos los contenedores que estan encendidos o apagados** |
| docker stop idcontenedor o nombredecontenedor | **detiene uncontenedor** |
| docker start idcontenedor o nombredecontenedor | **enciende un uncontenedor** |
| docker rm idcontenedor o nombredecontenedor | **elimina un uncontenedor si esta apagado** |
| docker rm  -f idcontenedor o nombredecontenedor | **elimina un uncontenedor si esta apagado o encendido** |