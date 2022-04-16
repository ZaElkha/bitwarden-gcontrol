#!/bin/bash

set x

# Hay que tener docker y docker compose instalados.

# Crear el directorio de bitwarden en /opt.
mkdir /opt/bitwarden

# Eliminar instalaciones previas.
rm -rf /opt/bitwarden/*

# Entrar al directorio bitwarden.
cd /opt/bitwarden

# Descargar el instalador de bitwarden.
curl -Lso bitwarden.sh https://go.btwrdn.co/bw-sh && chmod 700 bitwarden.sh