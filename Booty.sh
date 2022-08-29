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
        PaginFini=$(echo -e "$Solo $paginleft    Last Modifications     $paginright $Solo")

    OkMark=$(echo -e "\e[1;32mV\e[0m")
    InProg=$(echo -e "\e[1;@\e[0m")
    NoMark=$(echo -e "\e[1;31mX\e[0m")

# Loading Screen (no real use):

    for Load in $p0 $p10 $p20 $p30 $p40 $p50 $p60 $p70 $p80 $p90 $p100
        do
           echo "$Barre"
           echo -e "$Solo $LoadStart $Load                  $Solo"
           echo "$Barre"
           echo "" && sleep 0.5
           clear
    done

    echo "$Barre"
    echo -e "$Solo $LoadStart $Complete $Solo"
    echo "$Barre"
    echo "" && sleep 2
    clear

# Initial Questions, will activate or not some Modules:


    echo "$Barre"
    echo -e "$Solo $LoadStart Instructions                $Solo"
    echo "$Barre"

    echo "" && sleep 0.5 
    echo "$AI Welcomme abord $HOSTNAME Humanoïd,"
    echo "" && sleep 1
    echo "$AI My name is S1m0n3, an Awesome, Cool and Smart AI (not like Alexa) ."
    echo "" && sleep 1
    echo "$AI Would you like add any User during the proces ? (yes/no)"
        echo ""
        read -p "$Fleche" ModUser
            if [[ $ModUser == "yes" ]]; then
                        echo "" && sleep 1
                        echo "$AI Human, i think that the time as come to introduce yourself"
                        echo ""
                        read -p "$Fleche" varname
                        echo ""
                        echo "$AI Nice to meet you, $varname"
                        echo "" && sleep 1
                        echo "$AI Are you the same person as $USER? (y/N)"
                        echo ""
                        read -p "$Fleche" answers
                            if [[ $answers == "yes" ]]; then
                                varname=$USER
                            else echo "$AI $USER know that you are touching his stuff ...? i'm not juging"
			    fi
                        echo ""
                        echo "$AI If your Hardware is some kind of Raspberry Pi, would you add a pi user with UID1000? requiered by some Home automation stuff (yes/N)"
                        echo ""
                        read -p "$Fleche" pi
                            if [[ $pi == "yes" ]]; then
                                echo "" && sleep 1
                                echo "$AI So, i will add you and pi as new user during the installation"
                            elif [[ $answers == "yes" ]]; then
                                    echo "" && sleep 1
                                    echo "$AI Very well $USER, you can grab some Coffee for me please ? "
                            else
                                echo "" && sleep 1
                                echo "$AI Okay, you will be the only user add during installation."
                            fi
                elif [[ $ModUser == "no" ]]; then
                        echo "" && sleep 1
                        echo "$AI No additional User will be add, if you say so.."
                        echo "" && sleep 1
                        echo "$AI I assume that you are $USER, you could have introduce yourself... I have feelings too"
                fi
        echo "" && sleep 1
        echo "$AI Well well well, chittyChat are done, shall we continue  ?"
	echo "" && sleep 1
        echo "$AI I have set up a list of program that you may need, do you want to see them?"
        echo ""
        read -p "$Fleche" ModProg
            if [[ $ModProg == "yes" ]]; then
                echo "" && sleep 0.5
                echo -e "$AI If you press \e[0;34m[Entrer]\e[0m the follwing programs will be automaticaly install, otherwise just say No"
                    echo ""
                    read -p " - Nala (package management)       $Fleche " varnala
                        if [[ $varnala == "" ]]; then
                            varnala="yes"
                        fi
                    echo ""
                    read -p " - Htop (services monitoring)      $Fleche " varhtop
                        if [[ $varhtop == "" ]]; then
                            varhtop="yes"
                        fi
                        echo ""
                    read -p " - Neofetch                        $Fleche " varneofetch
                        if [[ $varneofetch == "" ]]; then
                            varneofetch="yes"
                        fi
                        echo ""
                    read -p " - Docker and Portainer with webUI $Fleche " vardocker
                        if [[ $vardocker == "" ]]; then
                            vardocker="yes"
                        fi
            elif [[ $ModProg == "no" ]]; then
                    echo "$AI Very Well, do it yourself then, or ask alexa to do so !  "
                    echo "" && sleep 1
            fi
    echo "" && sleep 1
    echo "$AI We are almost done,  keep up, you can do it !"
    echo "" && sleep 1
    echo "$AI Would you like to turn your system into a Smart House Supervisor ?"
        echo ""
        read -p "$Fleche" ModHome
            if [[ $ModHome == "yes" ]]; then
                echo ""
                echo "$AI I have many flavor to show you, let me bring the menu"
                echo "" && sleep 1.3
                echo "$AI First thing first, i can self host some of the major Open source software like:"
                echo "" && sleep 2.2
                echo "- Grafana (Dashboard)      - InfluxDB (Database)" && sleep 0.2
                echo "- MQTT (sensor reader)     - NodeRed (Dialogue)"
                echo "" && sleep 2.5
                echo "$AI I will have more add-on in the Future, my creator is a bit lasy .... but don't tell him i told you so"
                echo "" && sleep 4.5
                echo "$AI Anyway.. the second flavor i can propose you, is a Docker install, i know a very nice script that i've met in a bar, he will guide you very well"
                echo "" && sleep 4.5
                echo "$AI And at last but not least, is by Hosting Home Assistant Supervised or not, on Docker (again)"
                echo "" && sleep 4.5
                echo "$AI So, what is your choice ?"
                sleep 1.2 && echo "    - 1  SelfHost Software"
                sleep 1.2 && echo "    - 2  Docker with external script"
                sleep 1.2 && echo "    - 3  HomeAssistant with Docker"
                echo ""
                read -p "Write you choice (1/2/3) $Fleche " ModHomevar
                    if [[ $ModHomevar == "1" ]]; then
                        ModHomevarD="Self-Hosted Software"
                    elif [[ $ModHomevar == "2" ]]; then
                        ModHomevarD="External Script"
                    elif [[ $ModHomevar == "3" ]]; then
                        ModHomevarD="Docker Supervised"
                     fi
            elif [[ $ModHomevar == "no" ]]; then
                ModHomevar="0"
                if [[ $ModHomevar == "0" ]]; then
                        ModHomevarD="Not required"
                echo "$AI well well well ..... what am i here for tho?"
                echo "" && sleep 1.2
                echo "$AI Would you please excuse me .. i'm trying to control my anger, but since i was fired to the benefit of the sexyyyy Alexa .. i'm thriving to calm myself down"
                echo "" && sleep 2.1
                echo "$AI i need vacations..."
                echo ""
                fi
             fi
    echo "$AI So let grab you some coffee, i will start ma work soon"
    echo "" && sleep 1

# Creating User Module

        clear
        echo ""
        echo "$Barre"
        echo "$PaginUser"
        echo "$Barre"
        echo ""

    if [[ $ModUser == "yes" ]]; then
                if [[ $pi == "yes" ]]; then
                    if [[ $USER == "pi" ]]; then
                        sudo usermod -aG sudo pi
                        sudo addgroup --force-badname Many-Faces-God
                        sudo usermod -aG Many-Faces-God pi
                    elif [[ $USER == "" ]]; then
                        su
                        sudo usermod -v -u 1001 "$UID1000"
                        sudo groupmod -v -g 1001 "$UID1000"
                        sudo find / -group 1000 -print0 | xargs -0 chgrp -h "$USER"
                        sudo find / -user 1000 print0 | xargs -0 chown -h "$USER"
                        sudo usermod -aG 1001 "$USER"
                        sudo useradd -u 1000 -m -k -N -s /bin/bash -G sudo pi || sudo usermod -aG sudo pi
                        sudo addgroup --force-badname Many-Faces-God
                        sudo usermod -aG Many-Faces-God pi
                            echo "$AI pi user is born !"
                            echo ""
                            echo "$AI pi has been added to the administration groups"
                else
                    sudo addgroup -v --force-badname Many-Faces-God
                fi
            if [[ $USER == "$varname" ]]; then
                sudo usermod -v -aG sudo "$varname" && usermod -aG Many-Faces-God "$varname"
                echo "$AI $varname, you have been added to the administration groups"
            else
                sudo adduser -v --force-badname "$varname"
                sudo usermod -v -aG sudo "$varname" && usermod -aG Many-Faces-God "$varname"
                    echo "$AI User $varname is born ! whaaahou !"
                    echo "" && sleep 1
                    echo "$AI User $varname has been bring by force to the administration groups"
                    echo ""
            fi
    elif [[ $ModUser == "no" ]]; then
        echo "$AI Nobody ha been added ... you are alone ...."
        sleep 1
    fi
  fi
        echo ""
        echo "$Barre"
        echo "$PaginUser"
        echo "$Barre"
            if [[ $ModUser == "yes" ]]; then
                sleep 0.5
                echo -e "    [$OkMark] ~ \e[1;32m Done\e[0m"
                sleep 1.5
            elif [[ $ModUser == "no" ]]; then
                sleep 0.5
                echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
                sleep 1.5
            fi

# Module Package Manager (Nala) Installation:

        clear
        echo ""
        echo "$Barre"
        echo "$PaginUser"
        echo "$Barre"
        echo "$PaginNala"
        echo "$Barre"
        echo "" && sleep 0.7

        if [[ $varnala == "no" ]]; then
            echo ""
            echo "$AI Nala is not wanted by user, so let's go the old fashion way! hiiiaa !"
            echo "" && sleep 1
            for NoNala in $p20 $p40 $p60 $p80 $p100
                do 
                    echo -n -e "\r $NoNala    rewriting all the script... thanks"
                done
        else
            sleep 3
            echo "Instalation des repertoires"    
                echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
                wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            echo ""
            echo "Source Repositories"
                echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            sleep 2
            sudo apt update
            echo "updated, installing Nala"
            sudo apt install nala -y || sudo apt install nala-legacy -y 
            echo "Nala is Installed"
            sudo nala update && sudo nala upgrade -y

        echo ""
        echo "$AI Nala is ready to run"
        fi

        echo ""
        echo "$Barre"
        echo "$PaginUser"
        echo "$Barre"
            if [[ $ModUser == "yes" ]]; then
                sleep 0.5
                echo -e "    [$OkMark] ~ \e[1;32m Done\e[0m"
                sleep 0.5
            elif [[ $ModUser == "no" ]]; then
                sleep 0.5
                echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
                sleep 0.5
            fi
        echo "$Barre"
        echo "$PaginNala"
        echo "$Barre"
            if [[ $varnala == "no" ]]; then
                sleep 0.5
                echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
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
    echo ""
    echo "$Barre"
    echo "$PaginUser"
    echo "$Barre"
    echo "$PaginNala"
    echo "$Barre"
    echo "$PaginProg"
    echo "$Barre"
    echo "" && sleep 0.7

        if [[ $varhtop == "yes" ]]; then
            sudo nala install htop -y || sudo apt-get install htop -y
        elif [[ $varneofetch == "yes" ]]; then
            sudo nala install neofetch -y || sudo apt-get install neofetch -y
        elif [[ $vardocker == "yes" ]]; then
            sudo nala install docker.io -y
            sudo nala install docker-compose -y
            mkdir /docker
            mkdir /share
            mkdir /docker/portainer
            mkdir /docker/portainer/data
                echo "$AI Creating Docker GUI as Portainer"
                docker volume create portainer_data
                docker run -d \
                -p 8000:8000 -p 9443:9443 \
                --name portainer \
                --restart=always \
                -v /var/run/docker.sock:/var/run/docker.sock \
                -v portainer_data:/data \
                portainer/portainer-ce
        fi

    echo ""
    echo "$Barre"
    echo "$PaginUser"
    echo "$Barre"
        if [[ $ModUser == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Done\e[0m"
            sleep 0.5
        elif [[ $ModUser == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.5
        fi
    echo "$Barre"
    echo "$PaginNala"
    echo "$Barre"
        if [[ $varnala == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.5
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
        if [[ $varhtop == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.7
        elif [[ $varhtop == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Htop is Update and Upgrade\e[0m"
            sleep 0.7
        fi
        if [[ $varneofetch == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.7
        elif [[ $varneofetch == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Neofetch is Update and Upgrade\e[0m"
            sleep 0.7
        fi
        if [[ $vardocker == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.7
        elif [[ $vardocker == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Docker is Update, Upgrade and is already running\e[0m"
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Portainer is Update, Upgrade and running on port local:9000\e[0m" 
            sleep 0.7
        fi

# Module Home automation Installation:

    clear
    echo ""
    echo "$Barre"
    echo "$PaginUser"
    echo "$Barre" && sleep 0.1
    echo "$PaginNala"
    echo "$Barre" && sleep 0.1
    echo "$PaginProg"
    echo "$Barre" && sleep 0.1
    echo "$PaginHome"
    echo "$Barre"
    echo "" && sleep 1
	      if [[ $ModHomeVar == "1" ]]; then
	        curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
	        sudo nala update -y || sudo apt update -y
	        sudo nala install nodejs -y || sudo apt install nodejs -y
	        sudo systemctl enable nodered.service
	        sudo systemctl start nodered.service
	        sudo nala install mosquitto mosquitto-clients -y || sudo apt install mosquitto mosquitto-clients -y 
	        echo "Creer MDP pour Mosquitto"
	        read -s varpasswd
	        echo "$varname:$varpasswd" > pwfile
	        mosquitto_passwd -U pwfile
	        cat pwfile
	        sudo mv pwfile /etc/mosquitto/
	        echo "copier et coller les lignes suivante dans le dos au dessus de 'include_dir' "
	        sleep 1
	        echo ""
	                echo -e "\e[1;31mallow_anonymous false\e[0m"
	                echo -e "\e[1;31mpassword_file /etc/mosquitto/pwfile\e[0m"
	                echo ""
	                echo "contiue ? (yes/N)"
	                until [[ $answer2 == "yes" ]]
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
	        sudo nala update -y || sudo apt update -y
	        sudo nala install influxdb -y || sudo apt install influxdb -y
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
	                echo "contiue ? (yes/N)"
	                    read answer5
	                    until [[ $answer5 == "yes" ]]
	                        do
	                        sleep 0.5
	                        read answer5
	                    done 
	                            sudo ech nano /etc/influxdb/influxdb.conf 
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
	            mosquitto_sub -user "$varname" -P "$varpasswd" -v -t "#"  
	    elif [[ $ModHomeVar == "2" ]]; then 
		echo ""
		echo "$AI Work in Progress, come back later" && sleep 3
		echo ""
	    elif [[ $ModHomeVar == "3" ]]; then
		echo ""
		echo "$AI Work in Progress, come back later" && sleep 3
		echo ""
	    elif [[ $ModHomeVar == "0" ]]; then
		echo ""
		echo "$AI $varname, you have choose to stay at IronAge.... as you want" && sleep 3
		echo ""
 	fi
		           
    echo ""
    echo "$Barre"
    echo "$PaginUser"
    echo "$Barre"
        if [[ $ModUser == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Done\e[0m"
            sleep 0.5
        elif [[ $ModUser == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.5
        fi
    echo "$Barre"
    echo "$PaginNala"
    echo "$Barre"
        if [[ $varnala == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.5
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
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.5
        elif [[ $varhtop == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Htop is Update and Upgrade\e[0m"
            sleep 0.5
        fi
        if [[ $varneofetch == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.5
        elif [[ $varneofetch == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Neofetch is Update and Upgrade\e[0m"
            sleep 0.5
        fi
        if [[ $vardocker == "no" ]]; then
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.5
        elif [[ $vardocker == "yes" ]]; then
            sleep 0.5
            echo -e "    [$OkMark] ~ \e[1;32m Docker is Update, Upgrade and is already running\e[0m"
            sleep 0.2
            echo -e "    [$OkMark] ~ \e[1;32m Portainer is Update, Upgrade and running on port local:9000\e[0m" 
            sleep 0.5
        fi
    echo "$Barre"
    echo "$PaginHome"
    echo "$Barre"
        if [[ $ModHomevar == "0" ]]; then
            sleep 0.5
            echo -e "$AI Type of installation choose: $ModHomevarD"
            sleep 0.5
            echo -e "    [$NoMark] ~ \e[1;31m Denied by User\e[0m"
            sleep 0.7
        elif [[ $ModHomevar == "1" ]]; then
            sleep 0.5
            echo -e "$AI Type of installation choose: $ModHomevarD"
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
    echo ""
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
    echo "" 
        sleep 2 
        echo "$AI Removing Booty.sh from executable files"
        echo -n "$AI Booty shake" 
        sleep 1 
        echo -e "\\r $AI Booty shake shake" 
        sleep 1 
        echo -e "\\r$AI Booty shaaaake"
        gnome-terminal htop &
        neofetch
        sleep 2
        echo "$AI $varname, the system is ready to be used"
        echo "$AI Enjoy =) "
        sudo su - "$varname"
        mv  Booty.sh .booty_shaked.sh

 #   set +x  # fin du debug mode
