#!/bin/bash

# Jusqu'a la ligne 81 c'est des fioritures pour me faire juste kiffer

clear
echo ""
echo -e "\e[1;33m ########################################################################  \e[0m"
echo -e "              \e[0;34mInitialisation\e[0m  \e[0;34m----------\e[0m"
echo -e "\e[1;33m ########################################################################  \e[0m"
    barre=' ######################################################################## '
    Barre=`echo -e "\e[1;33m$barre\e[0m"`
    LoadStart='              \e[0;34mInitialisation\e[0m  '
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "$LoadStart \e[0;31m*\e[0m\e[0;34m---------\e[0m"
echo "$Barre"
echo ""
    fleche='  ----> '
    Fleche=`echo -e "\e[0;32m$fleche\e[0;m"`
sleep 0.3 
clear
echo ""
echo -e "$LoadStart \e[0;31m**\e[0m\e[0;34m--------\e[0m"
echo "$Barre"
echo ""
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "$LoadStart \e[1;31m**\e[0m\e[0;33m*\e[0m\e\e[0;34m-------\e[0m"
echo "$Barre"
echo ""
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "$LoadStart \e[1;31m**\e[0m\e[0;33m**\e[0m\e\e[0;34m------\e[0m"
echo "$Barre"
echo ""
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "$LoadStart \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m*\e[0m\e[0;34m-----\e[0m"
echo "$Barre"
echo ""
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "$LoadStart \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[0;34m----\e[0m"
echo "$Barre"
echo ""
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "$LoadStart \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m*\e[0m\e[0;34m---\e[0m"
echo "$Barre"
echo ""
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "$LoadStart \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m**\e[0m\e[0;34m--\e[0m"
echo "$Barre"
echo ""
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "$LoadStart \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m**\e[0m\e[0;32m*\e[0m\e[0;34m-\e[0m"
echo "$Barre"
echo ""
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "$LoadStart \e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m**\e[0m\e[0;32m**\e[0m"
echo "$Barre"
sleep 0.3 
clear
echo ""
echo "$Barre"
echo -e "             \e[0;34mInitialisation\e[0m Complete"
echo "$Barre"
echo "" && sleep 1
    echo "-[~]- Bonjour Humanoïde,"
    echo "" && sleep 1
    echo "-[~]- Je vais prendre en charge la preparation du systeme pour vous."
    echo "" && sleep 1
    echo "-[~]- Désirez vous ajouter des Utilisateur lors de l'instalation ? (yes/no)"
        echo ""
        read -p "$Fleche" ModUser
            if [[ $ModUser == "yes" ]]; then
                echo ""    
                echo "$Barre"
                echo -e "                   \e[0;34m-----\e[0m Création des Utilisateurs \e[0;34m-----\e[0m"
                echo "$Barre"
                sleep 1.5
                    echo ""
                    echo "-[~]- A qui ai-je l'honneur de parler?"
                        read -p "$Fleche" varname
                        echo ""
                        echo "-[~]- Bienvenue sur le systeme $HOSTNAME $varname"
                        echo "" && sleep 1
                        echo "-[~]- Etes-vous le même Utilisateur que $USER? (y/N)"
                        echo ""
                        read -p "$Fleche" answers
                            if [[ $answers == "y" ]]; then 
                                $varname=$USER
                            fi
                        echo ""
                        echo "-[~]- Desirez vous ajouter un utilisateur pi avec UID1000? (y/N)"
                            read -p "$Fleche" pi
                            if [[ $pi == "y" ]]; then
                                echo ""
                                echo "-[~]- L'utilisateur pi seras ajouté lors de l'installation"
                            elif [[ $answer == "y" ]]; then
                                    echo ""
                                    echo "-[~]- tres bien, $USER Je vais pouvoir démarrer, "
                                else
                                    echo ""
                                    echo "-[~]- Vous serez le seul utilisateur ajouter lors de l'installation"
                            fi
                    
                        if [[ $pi == "y" ]]; then
                           if [[ $USER == "pi" ]]; then
                                sudo usermod -aG sudo pi
                                sudo addgroup --force-badname Many-Faces-God
                                sudo usermod -aG Many-Faces-God pi 
                            elif [[ $USER == "" ]]; then
                                su
                                sudo usermod -u 1001 $UID1000
                                sudo groupmod -g 1001 $UID1000
                                sudo find / -group 1000 -print0 | xargs -0 chgrp -h $USER
                                sudo find / -user 1000 print0 | xargs -0 chown -h $USER
                                sudo usermod -aG 1001 $USER
                                sudo useradd -u 1000 -m -k -N -s /bin/bash -G sudo pi || sudo usermod -aG sudo pi
                                sudo addgroup --force-badname Many-Faces-God
                                sudo usermod -aG Many-Faces-God pi 
                                    echo "-[~]- Utilisateur pi créé"
                                    echo ""
                                    echo "-[~]- Utilisateur pi a été ajouté au groupes d'administration"       
                        else 
                            sudo addgroup --force-badname Many-Faces-God
                        fi
                    if [[ $USER == $varname ]]; then
                        sudo usermod -v -aG sudo $varname && usermod -aG Many-Faces-God $varname
                        echo "-[~]- Utilisateur $varname a été ajouté au groupes d'administration"
                    else
                        sudo adduser -v --force-badname $varname
                        sudo usermod -v -aG sudo $varname && usermod -aG Many-Faces-God $varname
                            echo "-[~]- Utilisateur $varname créé"
                            echo ""
                            echo "-[~]- Utilisateur $varname a été ajouté au groupes d'administration"
                            echo ""
                    fi
            elif [[ $ModUser == "no" ]]; then 
                echo "-[~]- Aucun utilisateur créé à votre demande"
                sleep 1
            fi
echo ""    
echo "$Barre"
echo -e "                   \e[0;34m-----\e[0m Création des Utilisateurs \e[0;34m-----\e[0m"
echo "$Barre"
    if [[ $ModUser == "yes" ]]; then
           sleep 0.3
           echo -e "[\e[0;32mX\e[0m] ~ \e[1;34mDone\e[0m"
           sleep 0.3 
    elif [[ $ModUser == "no" ]]; then
             sleep 0.3
            echo -e "[\e[0;31m@\e[0m] ~ \e[1;33mDenied by user\e[0m"
             sleep 0.3 
    fi
echo "$Barre"
echo -e "                 \e[0;34m-------\e[0m Installation de Nala \e[0;34m----------\e[0m"
echo "$Barre"
echo ""
sleep 3
    echo "Instalation des repertoires"    
    echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
    wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
echo ""
    echo "Sorce Repo"
    echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list
sleep 2
    sudo apt update
    echo "updated, installing Nala"
    sudo apt install nala -y || sudo apt install nala-legacy -y 
    echo "Nala is Installed"
    sudo nala update && sudo nala upgrade -y
    clear
echo ""    
echo "$Barre"
echo -e "                   \e[0;34m-----\e[0m Création des Utilisateurs \e[0;34m-----\e[0m"
echo "$Barre"
    if [[ $ModUser == "yes" ]]; then
             sleep 0.3
             echo -e "     [\e[0;32mX\e[0m] ~ \e[1;34mDone\e[0m"
             sleep 0.3 
    elif [[ $ModUser == "no" ]]; then
             sleep 0.3
            echo -e "     [\e[0;31m@\e[0m] ~ \e[1;33mDenied by user\e[0m"
             sleep 0.3 
    fi
echo "$Barre"
echo -e "                 \e[0;34m-------\e[0m Installation de Nala \e[0;34m----------\e[0m"
echo "$Barre"
sleep 0.3
echo -e "     [\e[0;32mX\e[0m] ~ \e[1;34mDone\e[0m"
sleep 0.3
echo "$Barre"
echo -e "                \e[0;34m-------\e[0m Mise à niveau Logiciels \e[0;34m-------\e[0m"
echo "$Barre"
sleep 1
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
echo "$Barre"
echo -e "                   \e[0;34m-----\e[0m Création des Utilisateurs \e[0;34m-----\e[0m"
echo "$Barre"
    if [[ $ModUser == "yes" ]]; then
           sleep 0.3
           echo -e "     [\e[0;32mX\e[0m] ~ \e[1;34mDone\e[0m"
           sleep 0.3 
    elif [[ $ModUser == "no" ]]; then
             sleep 0.3
            echo -e "     [\e[0;31m@\e[0m] ~ \e[1;33mDenied by user\e[0m"
             sleep 0.3 
    fi
echo "$Barre"
echo -e "                 \e[0;34m-------\e[0m Installation de Nala \e[0;34m----------\e[0m"
echo "$Barre"
sleep 0.3
echo -e "     [\e[0;32mX\e[0m] ~ \e[1;34mDone\e[0m"
sleep 0.3
echo "$Barre"
echo -e "                \e[0;34m-------\e[0m Mise a niveau Logiciels \e[0;34m-------\e[0m"
echo "$Barre"
sleep 0.3
echo -e "     [\e[0;32mX\e[0m] ~ \e[1;34mDone\e[0m"
sleep 0.3
echo "$Barre"
echo -e "            \e[0;34m-------\e[0m Preparation pour Home Automation \e[0;34m------\e[0m"
echo "$Barre"
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
            echo -e "\e[1;31mallow_anonymous false\e[0m"
            echo -e "\e[1;31mpassword_file /etc/mosquitto/pwfile\e[0m"
            echo ""
            echo "contiue ? (Y/n)"
            until [[ $answer2 == "Y" ]]
                do
                sleep 0.5
                read answer2
            done
        sudo nano /etc/mosquitto/mosquitto.conf
        sudo /etc/init.d/mosquitto restart

        echo "instalation influxdb" && sleep 1
    wget -qO- https://repos.influxdata.com/influxdb.key | gpg –dearmor | sudo tee /usr/share/keyrings/influx-archive-keyring.gpg
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
                until [[ $answer5 == "Y" ]]
                    do
                    sleep 0.5
                    read answer5
                done 
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
    echo "deb  [signed-by=/usr/share/keyrings/grafana-archive-keyring.gpg] https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
    sudo nala update && sudo nala upgrade -y
    sudo nala install grafana
    sudo systemctl daemon-reload
    sudo systemctl enable grafana-server
    sudo systemctl start grafana-server   
    sudo systemctl status grafana-server 
    while [ sleep 8 ]; do
        mosquitto_sub -user $varname -P $varpasswd -v -t "#"  
        sleep 5 
        exit
    done
echo ""    
echo "$Barre"
echo -e "                   \e[0;34m-----\e[0m Création des Utilisateurs \e[0;34m-----\e[0m"
echo "$Barre"
    if [[ $ModUser == "yes" ]]; then
             sleep 0.3
             echo -e "     [\e[0;32mX\e[1m] ~ \e[1;34mDone\e[0m"
             sleep 0.3 
    elif [[ $ModUser == "no" ]]; then
             sleep 0.3
            echo -e "     [\e[0;31m@\e[0m] ~ \e[1;33mDenied by user\e[0m"
             sleep 0.3 
    fi
echo "$Barre"
echo -e "              \e[0;34m----------\e[0m Installation de Nala \e[0;34m--------------\e[0m"
echo "$Barre"
sleep 0.3
echo -e "     [\e[0;32mX\e[0m] ~ \e[1;34mDone\e[0m"
sleep 0.3
echo "$Barre"
echo -e "             \e[0;34m----------\e[0m Mise à niveau Logiciels \e[0;34m-----------\e[0m"
echo "$Barre"
sleep 0.3
echo -e "     [\e[0;32mX\e[0m] ~ \e[1;34mDone\e[0m"
sleep 0.3
echo "$Barre"
echo -e "             \e[0;34m------\e[0m Preparation pour Home Automation \e[0;34m------\e[0m"
echo "$Barre"
sleep 0.3
echo -e "     [\e[0;32mX\e[0m] ~ \e[1;34mDone\e[0m"
sleep 0.3
echo "$Barre"
echo -e "             \e[0;34m-----------\e[0m System mis à jour \e[0;34m----------------\e[0m"
echo "$Barre"
echo ""
sleep 0.5
    echo "Programmes généraux installés:"
    sleep 0.3
    echo "   Neofetch"
        sleep 0.1
        echo "   - HTOP"
        sleep 0.1
        echo "   - Docker"
        sleep 0.1
        echo "   - Portainer (local:9000)"
echo ""
sleep 0.5
    echo "Programmes d'automation installés:   "
    sleep 0.3 
    echo "  - Mosquitto-Broker"
        sleep 0.1
        echo "- NodeRed (local:1880)"
        sleep 0.1
        echo "- Influx_DB (local:8086)"
        sleep 0.1
        echo "- Grafana (local:"
echo ""
sleep 5    
echo "$Barre"
echo -e "                   \e[0;34m----- Dernières Modifications \e[0;34m-----"
echo "$Barre"
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
     mv  booty.sh .booty_shaked.sh
     