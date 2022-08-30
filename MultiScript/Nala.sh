#!/bin/bash
#   set -x # Activate debugging mode from here

##########################################
# Welcome inside the User-Module Script  #
#       Made by : Sultranos              #
#             ~~~~~~~                    #
# This Module will automate the install  #
#   of many usefull Software for you.    #
##########################################

# MultiScript Variable

Stage="Prog-Module"
#varname
#moduser
#nala
#SSH
#htop
#neofetch
#docker
#modhomevar
#modhomevard

# Graphical Start Elements:

    
    Sim1="\e[1;36mSim0ne\e[0m"
    AI="-[$Sim1]- "
    solo=' # '
    Solo=`echo -e "\e[1;33m$solo\e[0m"`
    barre=' ################################################################ '
    Barre=$(echo -e "\e[1;33m$barre\e[0m")

    LoadStart='              \e[1;30mINITIALISATION\e[0m  '
        p0="\e[0;36m----------\e[0m               "
        p10="\e[0;31m*\e[0m\e[0;36m---------\e[0m               "
        p20="\e[0;31m**\e[0m\e[0;36m--------\e[0m               "
        p30="\e[1;31m**\e[0m\e[0;33m*\e[0m\e\e[0;36m-------\e[0m               "
        p40="\e[1;31m**\e[0m\e[0;33m**\e[0m\e\e[0;36m------\e[0m               "
        p50="\e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m*\e[0m\e[0;36m-----\e[0m              "
        p60="\e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[0;36m----\e[0m              "
        p70="\e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m*\e[0m\e[0;36m---\e[0m              "
        p80="\e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m**\e[0m\e[0;36m--\e[0m              "
        p90="\e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m**\e[0m\e[0;32m*\e[0m\e[0;36m-\e[0m               "
        p100="\e[1;31m**\e[0m\e[0;33m**\e[0m\e[1;33m**\e[0m\e[1;32m**\e[0m\e[0;32m**\e[0m               "

    fleche='  ----> '
    Fleche=$(echo -e "\e[0;32m$fleche\e[0;m" )
    stepfleche='  ====> '
    StepFleche=$(echo -e "\e[1;36m$stepfleche\e[0;m" )
    complete='  Complete                 '
    Complete=$(echo -e "\e[1;37m$complete\e[0;m" )
    Step="$Stage"

    paginleft='\e[0;34m------------   \e[0m'
    paginright='\e[0;34m    ------------\e[0m'
        PaginUser=$(echo -e "$Solo $paginleft     User Creation Step    $paginright $Solo")
        PaginNala=$(echo -e "$Solo $paginleft   Nala Installation Step  $paginright $Solo")
        PaginProg=$(echo -e "$Solo $paginleft Program Installation Step $paginright $Solo")
        PaginHome=$(echo -e "$Solo $paginleft     Smart Homing Step     $paginright $Solo")
      PaginHomVar=$(echo -e "$Solo $Paginleft      $ModHomeVarD         $Paginright $Solo")
        PaginFini=$(echo -e "$Solo $paginleft    Last Modifications     $paginright $Solo")

    OkMark=$(echo -e "\e[1;32mV\e[0m")
    InProg=$(echo -e "\e[1;@\e[0m")
    NoMark=$(echo -e "\e[1;31mX\e[0m")

# Setup script elements

    set -o errexit  #Exit immediately if a pipeline returns a non-zero status
    set -o errtrace #Trap ERR from shell functions, command substitutions, and commands from subshell
    set -o nounset  #Treat unset variables as an error
    set -o pipefail #Pipe will exit with last non-zero status if applicable
    shopt -s expand_aliases
    alias die='EXIT=$? LINE=$LINENO error_exit'
    trap die ERR
    trap 'die "Script interrupted."' INT

    function error_exit() {
        trap - ERR
        local DEFAULT='Unknown failure occured.'
        local REASON="\e[97m${1:-$DEFAULT}\e[39m"
        local FLAG="\e[91m[ERROR:HAInstall] \e[93m$EXIT@$LINE"
        msg "$FLAG $REASON"
        exit $EXIT
    }
    function msg() {
        local TEXT="$1"
        echo -e "$TEXT"
    }
    function Skip(){
        echo ""
    }
    function Entete(){
        msg "$Barre"
        msg "$Solo  Created by     Sultranos                                  $Solo"
        msg "$Solo  Auto installer for Mostly Rasbian/RaspberryPi             $Solo"
        msg "$Solo  Mostly made for Smart Home booting process                $Solo"
        msg "$Solo  $Fleche Installer Script                                 $Solo"
        msg "$Solo  $Fleche Main Script Page                                 $Solo"
        msg "$Solo  $StepFleche $Step                                        $Solo"
        msg "$Barre"
        Skip
    }
    function entete(){
        msg "$Barre"
        msg "$Solo  $Fleche Installer Script                                 $Solo"
        msg "$Solo  $Fleche Main Script Page                                 $Solo"
        msg "$Solo  $StepFleche $Step                                        $Solo"
        msg "$Barre"
    }

 function pied(){
        msg "$Solo  $StepFleche $Step [Starting Soon]                        $Solo"
        msg "$Barre"
        Skip
    }
####
#   Utilities are Set up, following line is the programe
####

    Entete
    Skip && sleep 1
    entete
    Skip && sleep 1
        msg "$AI I have set up a list of program that you may need, do you want to see them? (yes/N)"
        Skip
        read -p "$Fleche" ModProg
            if [[ $ModProg == "yes" ]]; then
                Skip && sleep 0.5
                msg "$AI If you press \e[1;36m[\e[1;37mEntrer\e[0m\e[1;36m]\e[0m the follwing programs will be automaticaly install, otherwise just say No"
                    Skip
                    read -p " - Secure SHELL - SSH              $Fleche " SSHvar
                    Skip
                    read -p " - Nala (package management)       $Fleche " varnala
                    Skip
                    read -p " - Htop (services monitoring)      $Fleche " varhtop
                    Skip
                    read -p " - Neofetch                        $Fleche " varneofetch  
                    Skip
                    read -p " - Docker and Portainer with webUI $Fleche " vardocker
                    Skip
                    Skip
                msg "$AI Let's sum up you choices"
                Skip
                    if [[ $SSHvar == "" ]]; then
                        SSHvar="yes"
                        msg "- SSH      [$OkMark]"
                    elif [[  $SSHvar == "no" ]]; then
                        msg "- SSH      [$NoMark]"
                    fi
                    if [[ $varnala == "" ]]; then
                        varnala="yes"
                        msg "- Nala     [$OkMark]"
                    elif [[  $SSHvar == "no" ]]; then
                        msg "- Nala     [$NoMark]"
                    fi
                    if [[ $varhtop == "" ]]; then
                        varhtop="yes"
                        msg "- Htop     [$OkMark]"
                    elif [[  $SSHvar == "no" ]]; then
                        msg "- Htop     [$NoMark]"
                    fi
                    if [[ $varneofetch == "" ]]; then
                        varneofetch="yes"
                        msg "- Neofetch [$OkMark]"
                    elif [[  $SSHvar == "no" ]]; then
                        msg "- Neofetch [$NoMark]"
                    fi
                    if [[ $vardocker == "" ]]; then
                        msg "- Docker   [$OkMark]"
                        vardocker="yes"
                    elif [[  $SSHvar == "no" ]]; then
                        msg "- Docker   [$NoMark]"
                    fi
            elif [[ $ModProg == "" ]]; then
                msg "$AI Very Well, do it yourself then or ask alexa to do so !  "
                Skip && sleep 1
            fi
    Skip && sleep 1
        if [[ $varnala == "no" ]]; then
            Skip
            msg "$AI Nala is not wanted by user, so let's go the old fashion way! hiiiaa !"
            Skip && sleep 1
            for NoNala in $p20 $p40 $p60 $p80 $p100
                do 
                echo -n -e "\r $NoNala    rewriting all the script... thanks" && sleep 0.3
                msg "[$OkMark] - script rewrited"
                done
        else
            sleep 3
            echo "Instalation des repertoires"    
                echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
                wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            Skip
            echo "Source Repositories"
                echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            sleep 2
            sudo apt update
            echo "updated, installing Nala"
            sudo apt install nala -y || sudo apt install nala-legacy -y 
            echo "Nala is Installed"
            sudo nala update && sudo nala upgrade -y

        Skip
        msg "$AI Nala is ready to run"
        fi
        if [[ $ModUser == ""]] 
            echo "$Barre"
            echo "$PaginUser"
            echo "$Barre"
                if [[ $ModUser == "yes" ]]; then
                    sleep 0.5
                    echo -e "    [$OkMark] ~ \e[1;32m User created\e[0m $USER"
                    sleep 0.5
                elif [[ $ModUser == "no" ]]; then
                    sleep 0.5
                    echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $USER"
                    sleep 0.5
                elif [[ $ModUser == "NOTSET" ]]; then
                    sleep 0.5
                    msg "    [$InProg] ~ \e[1;34m User Module not run this time"
          &&&          sleep 0.5
        Skip
        entete
        echo "$Barre"
        echo "$PaginUser"
        echo "$Barre"
        echo "$PaginNala"
        echo "$Barre"
            if [[ $varnala == "no" ]]; then
                sleep 0.5
                echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $USER"
                sleep 1.5
            elif [[ $varnala == "yes" ]]; then
                sleep 0.5
                echo -e "    [$OkMark] ~ \e[1;32m Nala is Update\e[0m"
                sleep 0.2
                echo -e "    [$OkMark] ~ \e[1;32m Nala is Upgrade\e[0m" 
                sleep 1.5
            fi

# Module Program Installation:

    clear
    entete
    echo "$Barre"
    echo "$PaginUser"
    echo "$Barre"
    echo "$PaginNala"
    echo "$Barre"
    echo "$PaginProg"
    echo "$Barre"
    Skip && sleep 0.7

        if [[ $varhtop == "yes" ]]; then
            sudo nala install htop -y || sudo sudo nala install htop -y
        elif [[ $SSHvar == "yes" ]]; then 
            while [[ $PUB_KEY = "" ]]; do
                read -p "Write your public key (long string of code starting with ssh-rsa), eg. ssh-rsa: " PUB_KEY
            done
           
                SSH_ROOT=~/.ssh

                [ ! -d "$SSH_ROOT" ] && mkdir -p "$SSH_ROOT"
                chmod 700 $SSH_ROOT 
cat <<EOF >$SSH_ROOT/authorized_keys
$PUB_KEY
EOF
                    chmod 600 $SSH_ROOT/authorized_keys
                    sed -i 's/#\?\(PermitRootLogin\s*\).*$/\1 yes/' /etc/ssh/sshd_config
                    sed -i 's/#\?\(PermitEmptyPasswords\s*\).*$/\1 no/' /etc/ssh/sshd_config
                    sed -i 's/#\?\(PasswordAuthentication\s*\).*$/\1 no/' /etc/ssh/sshd_config
                    sed -i 's/#\?\(Banner\s*\).*$/\1 \/etc\/issue.net/' /etc/ssh/sshd_config

                    echo "KexAlgorithms curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256" >> /etc/ssh/sshd_config
                    echo "MACs umac-128-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,umac-128@openssh.com,hmac-sha2-256,hmac-sha2-512" >> /etc/ssh/sshd_config
                else
                    sed -i 's/#\?\(PermitRootLogin\s*\).*$/\1 yes/' /etc/ssh/sshd_config
                    sed -i 's/#\?\(PermitEmptyPasswords\s*\).*$/\1 yes/' /etc/ssh/sshd_config
                    sed -i 's/#\?\(PasswordAuthentication\s*\).*$/\1 no/' /etc/ssh/sshd_config
                    sed -i 's/#\?\(Banner\s*\).*$/\1 \/etc\/issue.net/' /etc/ssh/sshd_config

                    echo "KexAlgorithms curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256" >> /etc/ssh/sshd_config
                    echo "MACs umac-128-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,umac-128@openssh.com,hmac-sha2-256,hmac-sha2-512" >> /etc/ssh/sshd_config
                fi    
                       
        elif [[ $varneofetch == "yes" ]]; then
            sudo nala install neofetch -y || sudo sudo nala install neofetch -y
        elif [[ $vardocker == "yes" ]]; then
            sudo nala install docker.io -y
            sudo nala install docker-compose -y
            mkdir /docker
            mkdir /share
            mkdir /docker/portainer
            mkdir /docker/portainer/data
                msg "$AI Creating Docker GUI as Portainer"
                docker volume create portainer_data
                docker run -d \
                -p 8000:8000 -p 9443:9443 \
                --name portainer \
                --restart=always \
                -v /var/run/docker.sock:/var/run/docker.sock \
                -v portainer_data:/data \
                portainer/portainer-ce
        fi



        sed -i '15s/$0/Stage="Home-Module"/' S1m0n3.sh && msg "$AI $Step is done preparing for next step" || msg "$AI [$NoMark] Fail to Add variables to Main Script"
        sed -i '18s/#nala/varnala="$(awk -v varnala="$varnala" '{print "$varnala"}' ModUser.sh)"/' S1m0n3.sh && msg "$AI [$OkMark] Adding variables Nala to Main Script" || msg "$AI [$NoMark] Fail to Add variables to Main Script"
        sed -i '19s/#SSH/SSHvar="$(awk -v SSHvar="$SSHvar" '{print "$SSHvar"}' ModUser.sh)"/' S1m0n3.sh && msg "$AI [$OkMark] Adding variables SSH to Main Script" || msg "$AI [$NoMark] Fail to Add variables to Main Script"
        sed -i '20s/#htop/varhtop="$(awk -v varhtop="$varhtop" '{print "$varhtop"}' ModUser.sh)"/' S1m0n3.sh && msg "$AI [$OkMark] Adding variables Htop to Main Script" || msg "$AI [$NoMark] Fail to Add variables to Main Script"
        sed -i '21s/#neofetch/varneofetch="$(awk -v varneofetch="$varneofetch" '{print "$varneofetch"}' ModUser.sh)"/' S1m0n3.sh && msg "$AI [$OkMark] Adding variables Neofetch to Main Script" || msg "$AI [$NoMark] Fail to Add variables to Main Script"
        sed -i '22s/#docker/vardocker="$(awk -v vardocker="$vardocker" '{print "$vardocker"}' ModUser.sh)"/' S1m0n3.sh && msg "$AI [$OkMark] Adding variables Docker to Main Script" || msg "$AI [$NoMark] Fail to Add variables to Main Script"
        
        msg "$AI Maaaarty !! we neeed 1.2 GWatt !!"
        ./S1m0n3.sh