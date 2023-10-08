# Impongo un alias al nombre de la imagen
FROM maven:3.5-alpine as builder
# Ejemplo desde  git de maven
COPY app /app
# construye el jar inicial
RUN cd /app && mvn package
# hasta acá se generó el jar que se necesitaba...
#-------------------------------------------------------------------

FROM openjdk:8-alpine
# copio del stage anterior
COPY --from=builder /app/target/my-app-1.0-SNAPSHOT.jar /opt/app.jar
# corro la app
CMD java -jar /opt/app.jar

# Se ahorra espacio dado que las dependencias iniciales no son necesarias
# una vez construido el jar, solo se usa la app y la imagen resultante
# tiene solo el tamaño necesario.

# Esta app es un simple Hello World, se puede ver con docker logs
