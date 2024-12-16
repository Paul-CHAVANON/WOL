#!/bin/bash

# Variables
SERVER_IP="192.168.0.142"  # Remplacez par l'adresse IP du serveur
SSH_USER="root"            # Nom d'utilisateur pour la connexion SSH
SSH_KEY="~/.ssh/id_rsa"    # Chemin vers votre clé SSH privée (facultatif)

# Commande pour activer Wake-on-LAN sur l'interface réseau
ssh -i "$SSH_KEY" "$SSH_USER@$SERVER_IP" "sudo ethtool -s eno1 wol g"

# Commande pour éteindre le serveur
SHUTDOWN_CMD="shutdown -h now"

echo "Tentative de connexion à $SERVER_IP pour arrêter le serveur..."

# Exécute la commande SSH pour arrêter le serveur
ssh -i "$SSH_KEY" "$SSH_USER@$SERVER_IP" "$SHUTDOWN_CMD"

# Vérifie si la commande a réussi
if [ $? -eq 0 ]; then
    echo "Commande d'arrêt envoyée avec succès au serveur $SERVER_IP."
else
    echo "Échec de l'arrêt du serveur. Veuillez vérifier les informations de connexion."
fi

