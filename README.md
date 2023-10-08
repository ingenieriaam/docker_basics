# Docker Basics
![logo](xtras/Docker-logo.png)

Seguimiento de curso de introducción a Docker

## Comandos:
```sh 
docker ps -a # lista los contenedores
```

```sh 
docker rm -f <CONTEINER> # borra el contenedor (f: force)
```

```sh 
docker image # lista las imágenes
```

```sh 
docker rmi <NAME>:<TAG> # lista las imágenes
```

```sh 
docker build -t <NAME>:<TAG> -f <MYDOCKERFILE_NAME> . # lista las imágenes
```
___
Notas de cada tema:
- [Intro](01-ej-apache-centos/intro.md)
- [Imagenes](02-docker-file/imagenes.md)
- [Buenas practicas](03-complete-image/buenas_practicas.md)
- [Dangling images](04-TLS-SSL/dangling_images.md)
