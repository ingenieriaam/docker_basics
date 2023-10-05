#!/bin/bash

echo "Iniciando contenedor" > /var/www/html/ini.html
apachectl -D FOREGROUND
echo "Contenedor iniciado"