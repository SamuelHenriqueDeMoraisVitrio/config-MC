#!/bin/bash

# Caminho para a pasta de wallpapers
WALLPAPER_DIR=~/Pictures/wallpapers

# Intervalo de tempo em segundos (por exemplo, 10 minutos, =600)
INTERVALO=600

# Inicializa o nitrogen com todos os wallpapers da pasta
nitrogen --restore

# Obtém a lista de wallpapers e embaralha
IMAGENS=$(find $WALLPAPER_DIR -type f | shuf)

while true; do
    # Loop para percorrer a lista embaralhada
    for IMAGEM in $IMAGENS; do
        # Define a imagem como papel de parede
        nitrogen --set-zoom-fill $IMAGEM
        # Espera o intervalo antes de mudar para a próxima imagem
        sleep $INTERVALO
    done

done

