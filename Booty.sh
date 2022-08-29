#!/bin/bash
#   set -x # Activate debugging mode from here

# Graphical Start Elements:

    AI="-[~]- "
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
    complete='  Complete                 '
    Complete=$(echo -e "\e[1;32m$complete\e[0;m" )

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
# Loading Screen (no real use):

	clear && sleep 0.5
	msg "$Barre"
	msg "$Solo  Created by     Sultranos                                  $Solo"
	msg "$Solo  Auto installer for Mostly Rasbian/RaspberryPi             $Solo"
	msg "$Solo  Mostly made for Smart Home booting process                $Solo"
	msg "$Solo  $Fleche Installer Script                                 $Solo"
	msg "$Solo  $Fleche Additional script made by tteck                  $Solo"
	msg "$Barre"
	Skip
	    msg "$AI Booting process will start, sure to proced? (say no to stop the Procedure)"
	    read -p "$Fleche" bootOK 
	    if [[ $bootOK == "no" ]]; then
		sleep 0.5
		Skip
		msg "$AI See you later then."
		sleep 1 && exit
	    fi
    for Load in $p0 $p10 $p20 $p30 $p40 $p50 $p60 $p70 $p80 $p90 $p100
        do
           msg "$Barre"
           msg "$Solo $LoadStart $Load                  $Solo"
           msg "$Barre"
           Skip && sleep 0.5
           clear
    done
    msg "$Barre"
    msg"$Solo $LoadStart $Complete $Solo"
    msg "$Barre"
    Skip && sleep 2
    clear

# Initial Questions, will activate or not some Modules:


    msg "$Barre"
    msg "$Solo $LoadStart Instructions                $Solo"
    msg "$Barre"

    echo"" && sleep 0.5 
    msg "$AI Welcomme abord $HOSTNAME Humanoïd,"
    Skip && sleep 1
    msg "$AI My name is S1m0n3, an Awesome, Cool and Smart AI (not like Alexa) ."
    Skip && sleep 1
    msg "$AI Would you like add any User during the proces ? (yes/no)"
        Skip
        read -p "$Fleche" ModUser
            if [[ $ModUser == "yes" ]]; then
                    msg "$AI Are you the same person as $USER? (y/N)"
                        Skip
                        read -p "$Fleche" answers
                            if [[ $answers == "yes" ]]; then
                                varname=$USER
                            else Skip 
                                msg "$AI $USER know that you are touching his stuff ...? i'm not jugging"
                            fi
                        Skip && sleep 1
                        msg "$AI Human, i think that the time as come to introduce yourself"
                        Skip
                        read -p "$Fleche" varname
                        Skip
                        msg "$AI Nice to meet you, $varname"
                        Skip && sleep 1
                        msg "$AI If your Hardware is some kind of Raspberry Pi, would you add a pi user with UID1000? requiered by some Home automation stuff (yes/N)"
                        Skip
                        read -p "$Fleche" pi
                            if [[ $pi == "yes" ]]; then
                                Skip && sleep 1
                                msg "$AI So, i will add you and pi as new user during the installation"
                            elif [[ $answers == "yes" ]]; then
                                    Skip && sleep 1
                                    msg "$AI Very well $USER, you can grab some Coffee for me please ? "
                            else
                                Skip && sleep 1
                                msg "$AI Okay, you will be the only user add during installation."
                            fi
                elif [[ $ModUser == "no" ]]; then
                        Skip && sleep 1
                        msg "$AI No additional User will be add, if you say so.."
                        Skip && sleep 1
                        msg "$AI I assume that you are $USER, you could have introduce yourself... I have feelings too"
                fi
        Skip && sleep 1
        msg "$AI Well well well, ChittyChat are done, shall we continue  ?"
	Skip && sleep 1
        msg "$AI I have set up a list of program that you may need, do you want to see them?"
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
            elif [[ $ModProg == "no" ]]; then
                msg "$AI Very Well, do it yourself then or ask alexa to do so !  "
                Skip && sleep 1
            fi
    Skip && sleep 1
    msg "$AI We are almost done,  keep up, you can do it !"
    Skip && sleep 1
    msg "$AI Would you like to turn your system into a Smart House Supervisor ?"
        Skip
        read -p "$Fleche" ModHome
            if [[ $ModHome == "yes" ]]; then
                Skip
                msg "$AI I have many flavor to show you, let me bring the menu"
                Skip && sleep 1.3
                msg "$AI First thing first, i can self host some of the major Open source software like:"
                Skip && sleep 2.2
                msg "- Grafana (Dashboard)      - InfluxDB (Database)" && sleep 0.2
                msg "- MQTT (sensor reader)     - NodeRed (Dialogue)"
                Skip && sleep 2.5
                msg "$AI I will have more add-on in the Future, my creator is a bit lasy .... but don't tell him i told you so"
                Skip && sleep 4.5
                msg "$AI Anyway.. the second flavor i can propose you, is a Docker install, i know a very nice script that i've met in a bar, he will guide you very well"
                Skip && sleep 4.5
                msg "$AI And at last but not least, is by Hosting Home Assistant Supervised or not, on Docker (again)"
                Skip && sleep 4.5
                msg "$AI So, what is your choice ?"
                sleep 1.2 && echo "    - 1  SelfHost Software"
                sleep 1.2 && echo "    - 2  Docker with external script"
                sleep 1.2 && echo "    - 3  HomeAssistant with Docker"
                Skip
                read -p "Write you choice (1/2/3) $Fleche " ModHomevar
                    if [[ $ModHomevar == "1" ]]; then
                        ModHomevarD='Self-Hosted Software'
                    elif [[ $ModHomevar == "2" ]]; then
                        ModHomevarD='External Script - IOT stack'
                    elif [[ $ModHomevar == "3" ]]; then
                        ModHomevarD='Docker Supervised'
                     fi
                    elif [[ $ModHome == "no" ]]; then
                        ModHomevar="0"
                        if [[ $ModHomevar == "0" ]]; then
                                ModHomevarD='Not required'
                        msg "$AI well well well ..... what am i here for tho?"
                        Skip && sleep 1.2
                        msg "$AI Would you please excuse me .. i'm trying to control my anger, but since i was fired to the benefit of the sexyyyy Alexa .. i'm thriving to calm myself down"
                        Skip && sleep 2.1
                        msg "$AI i need vacations..."
                        Skip
                        fi
             fi
    msg "$AI So let grab you some coffee, i will start ma work soon"
    Skip && sleep 1

# Creating User Module

        clear
        Skip
        msg "$Barre"
        msg "$PaginUser"
        msg "$Barre"
        Skip

    if [[ $ModUser == "yes" ]]; then
                if [[ $pi == "yes" ]]; then
                    if [[ $USER == "pi" ]]; then
                        sudo usermod -aG sudo pi
                        sudo addgroup --force-badname Many-Faces-God && msg "$AI Behold the arrival of God !"|| msg "$AI Behold the arrival of God !"
                        sudo usermod -aG Many-Faces-God pi
                    elif [[ $USER == "" ]]; then
                        su
                        sudo usermod -v -u 1001 "$UID1000"
                        sudo groupmod -v -g 1001 "$UID1000"
                        sudo find / -group 1000 -print0 | xargs -0 chgrp -h "$USER"
                        sudo find / -user 1000 print0 | xargs -0 chown -h "$USER"
                        sudo usermod -aG 1001 "$USER"
                        sudo useradd -u 1000 -m -k -N -s /bin/bash -G sudo pi || sudo usermod -aG sudo pi
                        sudo addgroup --force-badname Many-Faces-God && msg "$AI Behold the arrival of God !"|| msg "$AI Behold the arrival of God !"
                        sudo usermod -aG Many-Faces-God pi
                            msg "$AI pi user is born !"
                            Skip
                            msg "$AI pi has been added to the administration groups"
                else
                    sudo addgroup -v --force-badname Many-Faces-God && msg "$AI Behold the arrival of God !"|| msg "$AI Behold the arrival of God !"
                fi
            if [[ $USER == "$varname" ]]; then
                sudo usermod -v -aG sudo "$varname" && usermod -aG Many-Faces-God "$varname"
                msg "$AI $varname, you have been added to the administration groups"
	    elif [[ $USER == "" ]]; then
                sudo adduser -v --force-badname "$varname"
                sudo usermod -v -aG sudo "$varname" && usermod -aG Many-Faces-God "$varname"
                    msg "$AI User $varname is born ! whaaahou !"
                    Skip && sleep 1
                    msg "$AI User $varname has been bring by force to the administration groups"
                    Skip
            fi
    elif [[ $ModUser == "no" ]]; then
        msg "$AI Nobody ha been added ... you are alone ...."
        sleep 1
    fi
  fi
        Skip
        echo "$Barre"
        echo "$PaginUser"
        echo "$Barre"
            if [[ $ModUser == "yes" ]]; then
                sleep 0.5
                msg "    [$OkMark] ~ \e[1;32m $OkMark\e[0m"
                sleep 1.5
            elif [[ $ModUser == "no" ]]; then
                sleep 0.5
                echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
                sleep 1.5
            fi

# Module Package Manager (Nala) Installation:

        clear
        Skip
        echo "$Barre"
        echo "$PaginUser"
        echo "$Barre"
        echo "$PaginNala"
        echo "$Barre"
        Skip && sleep 0.7

        if [[ $varnala == "no" ]]; then
            Skip
            msg "$AI Nala is not wanted by user, so let's go the old fashion way! hiiiaa !"
            Skip && sleep 1
            for NoNala in $p20 $p40 $p60 $p80 $p100
                do 
                    echo -n -e "\r $NoNala    rewriting all the script... thanks"
                msg "[$OkMark]"
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

        Skip
        echo "$Barre"
        echo "$PaginUser"
        echo "$Barre"
            if [[ $ModUser == "yes" ]]; then
                sleep 0.5
                echo -e "    [$OkMark] ~ \e[1;32m User created\e[0m $varname"
                sleep 0.5
            elif [[ $ModUser == "no" ]]; then
                sleep 0.5
                echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
                sleep 0.5
            fi
        echo "$Barre"
        echo "$PaginNala"
        echo "$Barre"
            if [[ $varnala == "no" ]]; then
                sleep 0.5
                echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
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
    Skip
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
    Skip
    echo "$Barre"
    echo "$PaginUser"
    echo "$Barre"
        if [[ $ModUser == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m User created\e[0m $varname"
            sleep 0.5
        elif [[ $ModUser == "no" ]]; then
            sleep 0.5
            msg "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.5
        fi
    echo "$Barre"
    echo "$PaginNala"
    echo "$Barre"
        if [[ $varnala == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 1.5
        elif [[ $varnala == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Nala is Update\e[0m"
            sleep 0.3
            echo -e "    [$OkMark] ~ \e[1;32m Nala is Upgrade\e[0m" 
            sleep 0.5
        fi
    echo "$Barre"
    echo "$PaginProg"
    echo "$Barre"
    if [[ $SSHvar == "yes" ]]; then
            sleep 0.5
            msg "    [$OkMark] ~ \e[1;32m SSH security has been enable\e[0m"
            sleep 0.5
                if [[ $PUB_KEY == "" ]]; then 
                    msg "    [$InProg] ~ \e[1;33m SSH Key has not been yet set\e[0m, remember to do it later"
                    sleep 0.5
                else
                    msg "    [$OkMark] ~ \e[1;32m SSH Key has been Set\e[0m"
                    sleep 0.5
                fi
        elif [[ $SSHvar == "no" ]]; then
            sleep 0.5
            msg "    [$NoMark] ~ \e[1;31m Denied by\e[0m $varname"
            sleep 0.5
        fi
        if [[ $varhtop == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.7
        elif [[ $varhtop == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Htop is Update and Upgrade\e[0m"
            sleep 0.7
        fi
        if [[ $varneofetch == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.7
        elif [[ $varneofetch == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Neofetch is Update and Upgrade\e[0m"
            sleep 0.7
        fi
        if [[ $vardocker == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.7
        elif [[ $vardocker == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Docker is Update, Upgrade and is already running\e[0m"
            sleep 0.5
            msg "    [$OkMark] ~ \e[1;32m Portainer is Update, Upgrade and running on port local:9000\e[0m" 
            sleep 0.7
        fi
        
# Module Home automation Installation:

    clear
    Skip
    echo "$Barre"
    echo "$PaginUser"
    echo "$Barre" && sleep 0.1
    echo "$PaginNala"
    echo "$Barre" && sleep 0.1
    echo "$PaginProg"
    echo "$Barre" && sleep 0.1
    echo "$PaginHome"
    echo "$Barre"
    Skip && sleep 1
	      if [[ $ModHomevar == "1" ]]; then
	        curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
	        sudo nala update -y || sudo apt update -y
	        sudo nala install nodejs -y || sudo apt install nodejs -y
	        sudo systemctl enable nodered.service
	        sudo systemctl start nodered.service
	        sudo nala install mosquitto mosquitto-clients -y || sudo apt install mosquitto mosquitto-clients -y 
	        msg "$AI Creer MDP pour Mosquitto"
	        read -p "$Fleche" -s varpasswd
	        echo "$varname:$varpasswd" > pwfile
	        mosquitto_passwd -U pwfile
	        cat pwfile
	        sudo mv pwfile /etc/mosquitto/
	        echo "copier et coller les lignes suivante dans le dos au dessus de 'include_dir' "
	        sleep 1
	        Skip
	                echo -e "\e[1;31mallow_anonymous false\e[0m"
	                echo -e "\e[1;31mpassword_file /etc/mosquitto/pwfile\e[0m"
	                Skip
	                echo "contiue ? (yes/N)"
	                until  [[ $answer2 == "yes" ]]; do
	                    sleep 0.5
	                    read -p "$Fleche" answer2
	                done
	            sudo nano /etc/mosquitto/mosquitto.conf
	            sudo /etc/init.d/mosquitto restart

	            msg "$AI instalation influxdb" && sleep 1
	        wget -qO- https://repos.influxdata.com/influxdb.key | gpg –dearmor | sudo tee /usr/share/keyrings/influx-archive-keyring.gpg
	        lsb_release -a
	        echo "deb https://repos.influxdata.com/debian buster stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
	        sudo nala update -y || sudo apt update -y
	        sudo nala install influxdb -y || sudo apt install influxdb -y
	        sudo systemctl unmask influxdb
	        sudo systemctl enable influxdb
	        sudo systemctl start influxdb
	        influx
	        sudo xterm -hold -e "CREATE USER admin WITH PASSWORD admin WITH ALL PRIVILEGES" &
	        sudo xterm -hold -e "exit" &
	    Skip
	        echo "faire CTRL+W et chercher HTTP, faire les réglages suivants: "
	            sleep 1
	            Skip
	                echo "auth-enabled = true"
	                echo "pprof-enabled = true"
	                echo "pprof-auth-enabled = true"
	                echo "ping-auth-enabled = true"
	                echo "contiue ? (yes/N)"
	                    read answer5
	                    until [[ $answer5 == "yes" ]]
	                        do
	                        sleep 0.5
	                        read answer5
	                    done 
	                            sudo ech nano /etc/influxdb/influxdb.conf 
	    Skip
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
	        mosquitto_sub -user "$varname" -P "$varpasswd" -v -t "#"  
        fi
        if [[ $ModHomevar == "2" ]]; then 
		Skip
		msg "$AI Work in Progress, come back later" && sleep 3
		Skip
        fi
	if [[ $ModHomevar == "3" ]]; then
		Skip
		msg "$AI Work in Progress, come back later" && sleep 3
		Skip
                # Check Procedure
                set +u
                OS_NAME='lsb_release -is'
                CODE_NAME='lsb_release -cs'

                if [ $(id -u) -ne 0 ]; then
                  msg "You must run this script as a ROOT"
                  su -
                fi

                if [[ $OS_NAME -ne Debian ]]; then
                    msg "You must run this script on Debian Machine"
                    exit 1
                fi

                if [[ $CODE_NAME -ne bullseye ]]; then
                    msg "The script support Debian 11 aka bullseye only"
                    exit 1
                fi

                sudo nala -y install sudo unzip curl lsb-release git 
                cd ~
                msg "$AI Installing and Checking Prerequisite application - [$OkMark]" && sleep 0.5
          # Cleanup container
                msg "$AI Cleanup..."
                rm -rf /root/motd /root/install.sh

                msg "$AI Installing HA Supervised..."
                sudo nala install -y software-properties-common apparmor-utils dbus jq network-manager 
                msg "$AI Install HA Supervised Prerequisite Apps - \e[32m[$OkMark]\033[0m"
                systemctl disable ModemManager
                systemctl stop ModemManager
                msg "$AI Disable and stop ModemManager - \e[32m[$OkMark]\033[0m"
                rm -rf /etc/machine-id
                rm -rf /var/lib/dbus/machine-id
                dbus-uuidgen --ensure=/etc/machine-id
                dbus-uuidgen --ensure
                service docker restart
                msg "$AI Fixed machine-id and restart docker - \e[32m[$OkMark]\033[0m"

                service docker restart

          # Install HA Supervised
                wget https://github.com/home-assistant/supervised-installer/releases/latest/download/homeassistant-supervised.deb
                dpkg -i homeassistant-supervised.deb

                # Cleanup container
                msg "$AI Cleanup..."
                msg "$AI HA Superviser Installed - \e[32m[$OkMark]\033[0m"
                # Install AgentOS
                /root/hass/osagent-install.sh

                # Install Glances
                msg "$AI Installing Glances..."
                sudo nala install -y python3 python3-pip 
                pip3 install glances[all]
                msg "$AI Installed Prerequisite for Glances - \e[32m[$OkMark]\033[0m"
cat <<EOF >/lib/systemd/system/glances.service
[Unit]
Description=Glances
Documentation=man:glances(1)
Documentation=https://github.com/nicolargo/glances
After=network.target
[Service]
ExecStart=/usr/local/bin/glances --disable-plugin cloud -w
Restart=on-abort
[Install]
WantedBy=multi-user.target
EOF
                systemctl daemon-reload
                systemctl enable glances
                service glances start
                msg "$AI Cleanup..."
                rm -rf /root/hass/glances-install.sh
                msg "$AI Glances Installed - \e[32m[$OkMark]\033[0m"
                # Install Samba
            PASS=$1
                msg "$AI Installing Samba..."
                while [[ $PASS = "" ]]; do
                read -p "Your Samba Password $Fleche " -s PASS
                done
                sudo nala install samba -y 
cat <<EOF >>/etc/samba/smb.conf
[home-assistant]
comment = Samba for home-assistant
path = /usr/share/hassio
read only = no
browsable = yes
writeable = yes
guest ok = no
create mask = 0644
directory mask = 0755
force user = root  
force group = root  
EOF
                echo -e "$PASS\n$PASS" | smbpasswd -s -a root
                service smbd restart
                # Cleanup container
                msg "Cleanup..."
                rm -rf /root/hass/samba-install.sh
                msg "Samba Installed - \e[32m[$OkMark]\033[0m"
                # Begin Installation NGINX
                read -p "Do you want to install NGINX Proxy Manager (y/n): " NGX
                case "$NGX" in 
                [yY] | [yY][eE][sS])
                    /root/docker/npm-install.sh
                    ;;
                *)
                    echo "Please enter y/yes or n/no"
                    ;;
                esac
                # Install Fail2Ban
                /root/install/fail2ban-install.sh

                # Cleanup container
                rm -rf /root/install/home-assistant.sh /root/homeassistant-supervised.deb
                msg "$AI The System will need to REBOOT..."
               # reboot now

	    elif [[ $ModHomevar == "0" ]]; then
		Skip
		msg "$AI $varname, you have choose to stay at IronAge.... as you want" && sleep 3
		Skip
 	fi
		           
    Skip
    msg "$Barre"
    msg "$PaginUser"
    msg "$Barre"
        if [[ $ModUser == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m User created\e[0m $varname"
            sleep 0.5
        elif [[ $ModUser == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.5
        fi
    echo "$Barre"
    echo "$PaginNala"
    echo "$Barre"
        if [[ $varnala == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 1.5
        elif [[ $varnala == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Nala is Update\e[0m"
            sleep 0.2
            echo -e "    [$OkMark] ~ \e[1;32m Nala is Upgrade\e[0m" 
            sleep 0.5
        fi
    echo "$Barre"
    echo "$PaginProg"
    echo "$Barre"
        if [[ $varhtop == "no" ]]; then
            sleep 0.5
            msg "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.5
        elif [[ $varhtop == "yes" ]]; then
            sleep 0.5
            msg "    [$OkMark] ~ \e[1;32m Htop is Update and Upgrade\e[0m"
            sleep 0.5
        fi
        if [[ $varneofetch == "no" ]]; then
            sleep 0.5
            msg "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.5
        elif [[ $varneofetch == "yes" ]]; then
            sleep 0.5
            msg "    [$OkMark] ~ \e[1;32m Neofetch is Update and Upgrade\e[0m"
            sleep 0.5
        fi
        if [[ $vardocker == "no" ]]; then
            sleep 0.5
            msg "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.5
        elif [[ $vardocker == "yes" ]]; then
            sleep 0.5
            msg "    [$OkMark] ~ \e[1;32m Docker is Update, Upgrade and is already running\e[0m"
            sleep 0.2
            msg "    [$OkMark] ~ \e[1;32m Portainer is Update, Upgrade and running on port local:9000\e[0m" 
            sleep 0.5
        fi
        if [[ $SSHvar == "no" ]]; then
            sleep 0.5
            msg "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.5
        elif [[ $SSHvar == "yes" ]]; then
            sleep 0.5
            msg "    [$OkMark] ~ \e[1;32m SSH security has been enable\e[0m"
            sleep 0.5
                if [[ $PUB_KEY == "" ]]; then 
                    msg "    [$InProg] ~ \e[1;33m SSH Key has not been yet set\e[0m, remember to do it later"
                    sleep 0.5
                else
                    msg "    [$OkMark] ~ \e[1;32m SSH Key has been Set\e[0m"
                    sleep 0.5
                fi
        fi
    msg "$Barre"
    msg "$PaginHome"
    msg "$Barre"
        if [[ $ModHomevar == "0" ]]; then
            sleep 0.5
            msg "$AI Type of installation choose: $ModHomevarD"
            sleep 0.5
            msg "    [$NoMark] ~ \e[1;31m Denied by \e[0m $varname"
            sleep 0.7
        elif [[ $ModHomevar == "1" ]]; then
            sleep 0.5
            msg "$AI Type of installation choose: $ModHomevarD"
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Influx DB is Update, Upgrade and is already running\e[0m"
            sleep 0.2
            echo -e "    [$OkMark] ~ \e[1;32m Grafana is Update, Upgrade and running on port local:\e[0m" 
            sleep 0.2
            echo -e "    [$OkMark] ~ \e[1;32m NodeRed is Update, Upgrade and running on port local:\e[0m" 
            sleep 0.2
            echo -e "    [$OkMark] ~ \e[1;32m Mosquitto is Update, Upgrade and running on port local:\e[0m" 
            sleep 0.7
        elif [[ $ModHomevar == "2" ]]; then
            sleep 0.5
            echo -e "$AI Type of installation choose: $ModHomevarD"
            sleep 0.5
            echo -e "    [$InProg] ~ \e[1;36m Section Not finish yet ..... be patient\e[0m"
            sleep 0.7
        elif [[ $ModHomevar == "3" ]]; then
            sleep 0.5
            echo -e "$AI Type of installation choose: $ModHomevarD"
            sleep 0.5
            echo -e "    [$InProg] ~  \e[1;36m Section Not finish yet ..... be patient\e[0m"
            sleep 0.7        
        fi

# conclusion of the script

     clear
    Skip
    echo "$Barre"
    echo "$PaginUser"
    echo "$Barre" && sleep 0.1
    echo "$PaginNala"
    echo "$Barre" && sleep 0.1
    echo "$PaginProg"
    echo "$Barre" && sleep 0.1
    echo "$PaginHome"
    echo "$Barre" && sleep 0.1
    echo "$PaginFini"
    echo "$Barre"
    Skip 
        sleep 2 
        msg "$AI Removing Booty.sh from executable files"
        echo -n "$AI Booty shake" 
        sleep 1 
        echo -e "\\r $AI Booty shake shake" 
        sleep 1 
        echo -e "\\r$AI Booty shaaaake"
        gnome-terminal htop &
        neofetch
        sleep 2
        msg "$AI $varname, the system is ready to be used"
        msg "$AI Enjoy =) "
        sudo su - "$varname"
        mv  booty_V2.sh .booty_shaked.sh

 #   set +x  # fin du debug mode
