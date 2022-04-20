#!/bin/bash
set -x

USERNAME=gcontrol

# Entrar al Home del usuario
cd /home/$USERNAME

# Descargar ejecutable
curl -Lso bitwarden.sh https://go.btwrdn.co/bw-sh

# Iniciar el instalador
./bitwarden.sh install