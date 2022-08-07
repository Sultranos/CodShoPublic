#!/bin/bash

echo "Bonjour Nouvel Utilisateur,"
echo "a qui ai-je l'honneur de parler?"
    read varname
    echo "Bienvenue sur le systeme $varname"
    echo "Je vais preparer le systeme pour vous."


echo "###################################################################"
echo "                 ------- Preparation pour Nala ------"
echo "###################################################################"
echo ""
sleep 3

    echo "Instalation des repertoires"    
    echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
    wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null

    echo "Source Repo"
    echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list

sleep 2
echo "###################################################################"
echo "                ------- Installation de Nala ------"
echo "###################################################################"
echo ""
sleep 2

    sudo apt update
    echo "updated, installing Nala"
    sudo apt install nala -y || sudo apt install nala-legacy -y 
    echo "Nala is Installed"

sleep 2
echo "###################################################################"
echo "                 -------Mise a jour Nala------"
echo "###################################################################"
echo ""
sleep 2

    sudo nala update && sudo nala upgrade -y

sleep 2
echo "###################################################################"
echo "              ----- Mise a niveau Logiciels -----"
echo "###################################################################"
sleep 2

    sudo nala install htop -y 
    sudo nala install neofetch -y
    sudo nala install docker -y
    sudo nala install tmux -y

sleep 2
echo "###################################################################"
echo "                 -------System mis a jour------"
echo "###################################################################"
echo ""
echo " programmes installés:
        - Neofetch
        - HTOP
        - Docker
        - Tmux"


echo "##########################################################################"
echo "                   ----- Creation des Utilisateurs -----"
echo "##########################################################################"
sleep 2 

useradd -u 1000 -m -k -N -s /bin/bash -G sudo pi 
addgroup --force-badname Many-Faces-God
usermod -aG Many-Faces-God pi 

    echo "Utilisateur pi créé"
    echo "Utilisateur pi a été ajouté au groupes d'administration"

adduser --force-badname $varname
usermod -aG sudo $varname && usermod -aG Many-Faces-God $varname

 echo "Utilisateur $varname créé"
 echo "Utilisateur $varname a été ajouté au groupes d'administration"

echo "##########################################################################"
echo "                   ----- Dernieres Modifications -----"
echo "##########################################################################"
sleep 2 
     echo "supression de Booty.sh des fichier executables"
     chmod -x /booty.sh
     mv  booty.sh .booty_shaked.sh  
     echo ""

echo "###################################################################"
tmux
\^b%
neofetch
\^b%
htop

sleep 2
 echo "$varname, le systeme est pret à etre utilisé"
 echo "Enjoy =) "

 sudo su - $varname