#!/bin/bash

# Actualiza los repositorios
sudo apt update

# Instala las dependencias necesarias
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Agrega la clave GPG oficial de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Agrega el repositorio de Docker al sistema
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualiza los repositorios nuevamente
sudo apt update

# Instala Docker
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Verifica que Docker se haya instalado correctamente
sudo docker run hello-world