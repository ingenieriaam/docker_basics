# Dangling images

Es una imagen sin referenciar

```bash
administrador@NBKTAB004390-UBUNTU:~/Documentos/docker_basics/04-TLS-SSL$ docker images
REPOSITORY      TAG            IMAGE ID       CREATED        SIZE
<none>          <none>         a503dfbdc128   22 hours ago   483MB # esta es
apache          phpssl         115cb1684d66   22 hours ago   483MB
<none>          <none>         556dba9b820e   22 hours ago   483MB # esta es
<none>          <none>         c084b647b844   23 hours ago   478MB # esta es
nginx           v1             c0966508b934   3 days ago     206MB
nginx           latest         fef20d0bb88a   3 days ago     196MB
<none>          <none>         8168cb92e9e3   3 days ago     464MB # esta es
<none>          <none>         6cd8110f5a2c   3 days ago     464MB # esta es
<none>          <none>         5be943e68170   3 days ago     464MB # esta es
<none>          <none>         24289b96b825   3 days ago     464MB # esta es
<none>          <none>         a784d0d8f284   3 days ago     463MB # esta es
<none>          <none>         14eb84004dba   3 days ago     463MB # esta es
<none>          <none>         c2f139fb8f0d   7 days ago     463MB # esta es
<none>          <none>         7add843a312a   9 days ago     461MB # esta es
mysql           latest         b2013ac99101   2 weeks ago    577MB
espressif/idf   release-v5.1   6ec3adffac5c   4 months ago   4.24GB
hello-world     latest         9c7a54a9a43c   5 months ago   13.3kB
```

Estas se generan cuando, construida una imagen, se modifica el dockerfile y se construye nuevamente. El tag por default es lastest, sin embargo el tag es único por imagen, dado que sus capas son de solo lectura, y es por ello que crea una imagen nueva y la que queda sufre la quita de referencia (nombre y tag).

Este comportamiento se evita con algo tan simple como dar un tag especifico.

# Eliminarla

```bash
docker images -f dangling=true # - es filter
docker rmi <ID>

# Eliminar todas:
docker images -f dangling=true -q | xargs docker rmi # -q pide solo IDs, xargs toma la lista de arg y se la pasa de a uno a rmi
```