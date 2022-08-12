#!/bin/bash

echo "########################################################################"
echo "Initialisation ----------"
echo 0.5
echo "Initialisation ***-------"
echo 0.5
echo "Initialisation ******----"
echo 0.5
echo "Initialisation *********-"
echo 0.5
echo "Initialisation Complete"
 echo ""
    echo "Bonjour Nouvel Utilisateur,"
    echo "A qui ai-je l'honneur de parler?"
        read varname
        echo "Bienvenue sur le systeme $varname"
        echo "Est-ce le meme Utilisateur que $USER? (y/n)"
        read answers2
         if [[ $answer == "y" ]]; then 
            $varname=$USER
        fi
        echo "Desirez vous ajouter un utilisateur pi avec UID1000? (y/n)"
            read pi
            if [[ $pi == "y" ]]; then
                echo "L'utilisateur pi seras ajouté lors de l'installation"
            elif [[ $answer == "y" ]]; then
                    echo "tres bien, $USER"
                else
                    echo "Vous serez le seul utilisateur ajouter lors de l'installation"
            fi
    echo "Je vais prendre en charge la preparation du systeme pour vous."
echo ""
echo ""
echo "###################################################################"
echo "                 ------- Installation de Nala ------"
echo "##################################################################"
echo ""
sleep 2
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
echo ""
sleep 2
echo "###################################################################"
echo "              ----- Mise a niveau Logiciels -----"
echo "###################################################################"
sleep 2
echo ""
    sudo nala install htop -y 
    sudo nala install neofetch -y
    sudo nala install docker -y
echo ""
echo "###################################################################"
echo "          ------- Preparation pour Home Automation ------"
echo "###################################################################"
echo ""
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
            echo "allow_anonymous false"
            echo "password_file /etc/mosquitto/pwfile"
            echo ""
            echo "contiue ? (Y/n)"
                read answer2
                if [[ $answer2 == "n" ]]; then
                    sleep 5 echo "contiue ? (Y/n)"
                    read answer3
                    if [[ $answer3 == "n" ]]; then
                        sleep 5 echo "contiue ? (Y/n)"
                        read answer4
                        if [[ $answer4 == "n" ]]; then
                            sleep 5
                        fi
                    fi 
                fi 
        sudo nano /etc/mosquitto/mosquitto.conf
        sudo /etc/init.d/mosquitto restart
    wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -
    lsb_release -a
    echo "deb https://repos.influxdata.com/debian buster stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
    sudo nala update 
    sudo nala install influxdb -y
    sudo systemctl unmask influxdb
    sudo systemctl enable influxdb
    sudo systemctl start influxdb
    influx
    xterm -hold -e "CREATE USER admin WITH PASSWORD 'adminpassword' WITH ALL PRIVILEGES" &
    xterm -hold -e "exit" &
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
                fi 
echo ""
    sudo nano /etc/influxdb/influxdb.conf
    sudo systemctl restart influxdb
    influx -user $varname -password <$varpasswd>' 
    #'
    xterm -hold -e "CREATE DATABASE Sensors" &
    xterm -hold -e "exit" &
    sudo nala install build-essential git -y
    bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
    npm install node-red-contrib-influxdb
    sudo systemctl enable nodered.service
    sudo systemctl start nodered.service
    wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
    echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
    sudo nala update 
    sudo nala install grafana -y
    sudo systemctl enable grafana-server
    sudo systemctl start grafana-server    
    while [ sleep 8 ]; do
        mosquitto_sub -user mqtt_username -P mqtt_password -v -t "#"  
        sleep5 
        exit
    done
echo ""
sleep 2
echo "###################################################################"
echo "                 ------- System mis a jour ------"
echo "###################################################################"
echo ""
sleep 1
    echo " programmes généraux installés:
        - Neofetch
        - HTOP
        - Docker"
echo ""
    echo "programmes d'automation installés:    
        - Mosquitto-Broker
        - NodeRed
        - Grafana"
echo ""
sleep 5
echo "############################################################################"
echo "                   ----- Création des Utilisateurs -----"
echo "############################################################################"
sleep 2 
    if [[ $pi == "y" ]]; then
            usermod -u 1001 $USER
            groupmod -g 1001 $USER
            find / -group 1000 -printO | xargs -O chgrp -h $USER
            find / -user 1000 printO | xargs -O chown -h $USER
            usermod -aG 1001 $USER
        useradd -u 1000 -m -k -N -s /bin/bash -G sudo pi || sudo usermod -aG sudo pi
        addgroup --force-badname Many-Faces-God
        usermod -aG Many-Faces-God pi 
            echo "Utilisateur pi créé"
            echo "Utilisateur pi a été ajouté au groupes d'administration"
    else 
        addgroup --force-badname Many-Faces-God
    fi
    if [[ $USER == $varname ]]; then
        usermod -aG sudo $varname && usermod -aG Many-Faces-God $varname
        echo "Utilisateur $varname a été ajouté au groupes d'administration"
    else
        adduser --force-badname $varname
        usermod -aG sudo $varname && usermod -aG Many-Faces-God $varname
            echo "Utilisateur $varname créé"
            echo "Utilisateur $varname a été ajouté au groupes d'administration"
    fi
echo ""
echo "##########################################################################"
echo ""
    gnome-terminal htop &
    neofetch
    sleep 2
    echo "$varname, le systeme est prêt à etre utilisé"
    echo "Enjoy =) "
    sudo su - $varname
echo "##########################################################################"
echo "                   ----- Dernières Modifications -----"
echo "##########################################################################"
sleep 2 
     echo "Suppression de Booty.sh des fichier executables"
     echo "booty shake" 
     sleep 1 
     echo "shake" 
     sleep 1 
     echo "shaaaake"
     chmod -x booty.sh
     mv  booty.sh .booty_shaked.sh  