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


## comandos Docker
| Comando  | Descripcion |
| :--- | :--- |
| docker pull | **Descarga una imagen de DockerHub** | [Docker Hub](http://hub.docker.com) |
| docker images | **Visualisar las imagenes que se encuentran en el docker** |