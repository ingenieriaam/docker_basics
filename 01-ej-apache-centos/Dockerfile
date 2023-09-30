# Capa 1
FROM centos:7
# Capa 2, instala apache, el -y es absolutamente necesario 
# porque no hay interacciones con el usuario
# el comando es el que da la documentación de centos
RUN yum install -y httpd
# Capa 3, apache en foreground
CMD ["apachectl", "-D", "FOREGROUND"]
