#!/bin/bash

# Jusqu'a la ligne 81 c'est des fioritures pour me faire juste kiffer

echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[0;34m----------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[0;31m*\e[0m\e[0;34m---------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[0;31m**\e[0m\e[0;34m--------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[1;31m**\e[0m\e[0;33m*\e[0m\e\e[0;34m-------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[1;31m**\e[0m\e[0;33m**\e[0m\e\e[0;34m------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m*\e[0m\e[0;34m-----\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[0;34m----\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m*\e[0m\e[0;34m---\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m**\e[0m\e[0;34m--\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m**\e[0m\e[0;32m*\e[0m\e[0;34m-\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "               \e[0;34mInitialisation\e[0m \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m**\e[0m\e[0;32m**\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.5 && clear
echo ""
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "              \e[0;34mInitialisation\e[0m Complete"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
    sleep 1
    echo "-[~]- Bonjour Humanoïde,"
    echo "" && sleep 0.5
    echo "-[~]- Je vais prendre en charge la preparation du systeme pour vous."
    sleep 0.5 && clear
echo ""    
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                   \e[0;34m-----\e[0m Création des Utilisateurs \e[0;34m-----\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 2 
sleep 0.5
    echo ""
    echo "-[~]- A qui ai-je l'honneur de parler?"
        read varname
        echo "-[~]- Bienvenue sur le systeme $HOSTNAME $varname"
        sleep 0.5
        echo "-[~]- Etes-vous le même Utilisateur que $USER? (y/n)"
        read answers
         if [[ $answers == "y" ]]; then 
            $varname=$USER
        fi
        echo "-[~]- Desirez vous ajouter un utilisateur pi avec UID1000? (y/n)"
            read pi
            if [[ $pi == "y" ]]; then
                echo "-[~]- L'utilisateur pi seras ajouté lors de l'installation"
            elif [[ $answer == "y" ]]; then
                    echo "-[~]- tres bien, $USER"
                else
                    echo "-[~]- Vous serez le seul utilisateur ajouter lors de l'installation"
            fi
    
    if [[ $pi == "y" ]]; then
            usermod -u 1001 $USER
            groupmod -g 1001 $USER
            find / -group 1000 -print0 | xargs -0 chgrp -h $USER
            find / -user 1000 print0 | xargs -0 chown -h $USER
            usermod -aG 1001 $USER
        useradd -u 1000 -m -k -N -s /bin/bash -G sudo pi || sudo usermod -aG sudo pi
        addgroup --force-badname Many-Faces-God
        usermod -aG Many-Faces-God pi 
            echo "-[~]- Utilisateur pi créé"
            echo "-[~]- Utilisateur pi a été ajouté au groupes d'administration"
    else 
        addgroup --force-badname Many-Faces-God
    fi
    if [[ $USER == $varname ]]; then
        usermod -aG sudo $varname && usermod -aG Many-Faces-God $varname
        echo "-[~]- Utilisateur $varname a été ajouté au groupes d'administration"
    else
        adduser --force-badname $varname
        usermod -aG sudo $varname && usermod -aG Many-Faces-God $varname
            echo "-[~]- Utilisateur $varname créé"
            echo "-[~]- Utilisateur $varname a été ajouté au groupes d'administration"
    fi
echo ""    
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                \e[0;34m-------\e[0m Création des Utilisateurs \e[0;34m-----\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                 \e[0;34m-------\e[0m Installation de Nala \e[0;34m----------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 3
    echo "Instalation des repertoires"    
    echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
    wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
echo ""
    echo "Source Repo"
    echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list
sleep 2
    sudo apt update
    echo "updated, installing Nala"
    sudo apt install nala -y || sudo apt install nala-legacy -y 
    echo "Nala is Installed"
    sudo nala update && sudo nala upgrade -y
    clear
echo ""    
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                 \e[0;34m-------\e[0m Création des Utilisateurs \e[0;34m-----\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                 \e[0;34m-------\e[0m Installation de Nala \e[0;34m----------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                 \e[0;34m-------\e[0m Mise à niveau Logiciels \e[0;34m-------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 2
echo ""
    sudo nala install htop -y 
    sudo nala install neofetch -y
    sudo nala install docker.io -y
    sudo nala install docker-compose -y
      mkdir /docker
      mkdir /share
      mkdir /docker/portainer
      mkdir /docker/portainer/data
        echo "Creating Docker GUI as Portainer"
        docker volume create portainer_data
        docker run -d \
        -p 8000:8000 -p 9443:9443 \
        --name portainer \
        --restart=always \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v portainer_data:/data \
        portainer/portainer-ce
clear
echo ""    
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                 \e[0;34m-------\e[0m Création des Utilisateurs \e[0;34m-----\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                 \e[0;34m-------\e[0m Installation de Nala \e[0;34m----------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                 \e[0;34m-------\e[0m Mise a niveau Logiciels \e[0;34m-------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "             \e[0;34m-------\e[0m Preparation pour Home Automation \e[0;34m------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 2
    curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash - 
    sudo nala update -y
    sudo nala install nodejs -y
    sudo systemctl enable nodered.service   
    sudo systemctl start nodered.service 
    sudo nala install mosquitto mosquitto-clients -y
       echo "Creer MDP pour Mosquitto"
       read -s varpasswd
       echo "$varname:$varpasswd" > pwfile
       mosquitto_passwd -U pwfile
       cat pwfile
       sudo mv pwfile /etc/mosquitto/
       echo "copier et coller les lignes suivante dans le dos au dessus de "include_dir" "
       sleep 1
       echo ""
            echo -e "\e[1;31mallow_anonymous false\[1m"
            echo -e "\e[1;31mpassword_file /etc/mosquitto/pwfile\e[1m"
            echo ""
            echo "contiue ? (Y/n)"
            until [[ $answer2 == "Yes";"yes";"Y";"Yes" ]]
                do
                sleep 0.5
                read answer2
            done
        sudo nano /etc/mosquitto/mosquitto.conf
        sudo /etc/init.d/mosquitto restart

        echo "instalation influxdb" && sleep 1
    wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -
    lsb_release -a
    echo "deb https://repos.influxdata.com/debian buster stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
    sudo nala update 
    sudo nala install influxdb -y
    sudo systemctl unmask influxdb
    sudo systemctl enable influxdb
    sudo systemctl start influxdb
    influx
    sudo xterm -hold -e "CREATE USER admin WITH PASSWORD admin WITH ALL PRIVILEGES" &
    sudo xterm -hold -e "exit" &
echo ""
    echo "faire CTRL+W et chercher HTTP, faire les réglages suivants: "
        sleep 1
        echo ""
            echo "auth-enabled = true"
            echo "pprof-enabled = true"
            echo "pprof-auth-enabled = true"
            echo "ping-auth-enabled = true"
            echo "contiue ? (Y/n)"
                read answer5
                if [[ $answer5 == "n" ]]; then
                    sleep 5 echo "contiue ? (Y/n)"
                    read answer6
                         if [[ $answer6 == "n" ]]; then
                         sleep 5 echo "contiue ? (Y/n)"
                         read answer7
                             if [[ $answer7 == "n" ]]; then
                             sleep 5 
                             fi
                        fi
                    else 
                        sudo nano /etc/influxdb/influxdb.conf
                 fi 
echo ""
    sudo systemctl restart influxdb
    influx -user admin -password <admin>'#'
    sudo xterm -hold -e "CREATE DATABASE Sensors" &
    sudo xterm -hold -e "exit" &
    sudo nala install build-essential git -y
    bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
    sudo nala install node-red-contrib-influxdb
    sudo systemctl enable nodered.service
    sudo systemctl start nodered.service
    sudo nala update 
    sudo nala install -y apt-transport-https
    sudo nala install -y software-properties-common wget
    wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
    echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
    sudo nala update && sudo nala upgrade -y
    sudo nala install grafana
    sudo systemctl daemon-reload
    sudo systemctl enable grafana-server
    sudo systemctl start grafana-server   
    sudo systemctl status grafana-server 
    while [ sleep 8 ]; do
        mosquitto_sub -user mqtt_username -P mqtt_password -v -t "#"  
        sleep5 
        exit
    done
echo ""    
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "              \e[0;34m---------\e[0m Création des Utilisateurs \e[0;34m----------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "              \e[0;34m----------\e[0m Installation de Nala \e[0;34m--------------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "              \e[0;34m----------\e[0m Mise à niveau Logiciels \e[0;34m-----------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "              \e[0;34m------\e[0m Preparation pour Home Automation \e[0;34m------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 0.2
echo -e "[\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
sleep 0.2
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "              \e[0;34m-----------\e[0m System mis à jour \e[0;34m----------------\e[0m"
echo -e "\e[1;33m ######################################################################## \e[0m"
echo ""
sleep 0.5
    echo "Programmes généraux installés:"
    sleep 0.2
    echo "  - Neofetch"
        sleep 0.1
        echo "   - HTOP"
        sleep 0.1
        echo "   - Docker"
        sleep 0.1
        echo "   - Portainer (local:9000)"
echo ""
sleep 0.5
    echo "Programmes d'automation installés:   "
    sleep 0.2 
    echo "  - Mosquitto-Broker"
        sleep 0.1
        echo "- NodeRed (local:1880)"
        sleep 0.1
        echo "- Influx_DB (local:8086)"
        sleep 0.1
        echo "- Grafana (local:"
echo ""
sleep 5    
echo -e "\e[1;33m ######################################################################## \e[0m"
echo -e "                   \e[0;34m----- Dernières Modifications \e[0;34m-----"
echo -e "\e[1;33m ######################################################################## \e[0m"
sleep 2 
     echo "Suppression de Booty.sh des fichier executables"
     echo "booty shake" 
     sleep 1 
     echo "shake" 
     sleep 1 
     echo "shaaaake"
     gnome-terminal htop &
     neofetch
     sleep 2
    echo "$varname, le systeme est prêt à etre utilisé"
    echo "Enjoy =) "
    sudo su - $varname
     chmod -x booty.sh
     mv  booty.sh .booty_shaked.sh 