#!/bin/bash

set x

# Hay que tener docker y docker compose instalados.

# Crear el usuario de bitwarden.
adduser bitwarden

# Añadir el usuario al grupo de Docker.
usermod -aG docker bitwarden

# Crear el directorio de bitwarden en /opt.
mkdir /opt/bitwarden

# Cambiar los permisos del directorio bitwarden.
chmod -R 700 /opt/bitwarden

# Cambiar el usuario del directorio bitwarden.
chown -R bitwarden:bitwarden /opt/bitwarden

# Eliminar instalaciones previas.
rm -rf /opt/bitwarden/*

# Entrar al directorio bitwarden.
cd /opt/bitwarden

# Descargar el instalador de bitwarden.
curl -Lso bitwarden.sh https://go.btwrdn.co/bw-sh && chmod 700 bitwarden.sh

# Ejecutar el instalador de bitwarden.
./bitwarden.sh install