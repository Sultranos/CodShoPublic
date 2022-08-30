#!/bin/bash
#   set -x # Activate debugging mode from here

##########################################
# Welcome inside the User-Module Script  #
#       Made by : Sultranos              #
#             ~~~~~~~                    #
#      Finaly ! The Home stuff script    #
#    this Beautyfull Journey of making   #
#    you home smarter coming to an end   #
##########################################

# MultiScript Variable

Stage="Home-Module"
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
    stepfleche='  ===>'
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
        msg "$Barre"
        Skip
    }
    function entete(){
        msg "$Barre"
        msg "$Solo  $Fleche Installer Script                                 $Solo"
        msg "$Solo  $StepFleche $Step                                        $Solo"
        msg "$Barre"
        Skip
    }

 function pied(){
        msg "$Solo  $StepFleche $Step [Starting Soon]                        $Solo"
        msg "$Barre"
        Skip
    }

####
#   Utilities are Set up, following line is the programe
####
  
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


        Skip && sleep 1
	      if [[ $ModHomevar == "1" ]]; then
            msg " $AI Installation NodeRed"
                curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
                sudo nala update -y || sudo apt update -y
                sudo nala install nodejs -y || sudo apt install nodejs -y
                sudo systemctl enable nodered.service
                sudo systemctl start nodered.service
         
            msg "$AI Installation Mosquitto"
                sudo nala install mosquitto mosquitto-clients -y || sudo apt install mosquitto mosquitto-clients -y 
                msg "$AI Creer MDP pour Mosquitto"
                read -p "$Fleche" -s varpasswd
                echo "$varname:$varpasswd" > pwfile
                mosquitto_passwd -U pwfile
                cat pwfile
                sudo mv pwfile /etc/mosquitto/

                sed -i '13s/$0/allow_anonymous false/' /etc/mosquitto/mosquitto.conf
                sed -i '14s.$0.password_file /etc/mosquitto/pwfile.' /etc/mosquitto/mosquitto.conf
                sed -i '16s|$0|include_dir /etc/mosquitto/mosquitto.log|' /etc/mosquitto/mosquitto.conf
                
                sudo /etc/init.d/mosquitto restart

	        msg "$AI Installation influxdb" && sleep 1
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
                msg "$AI Adding some Autorisations"
                sed -i 's/auth-enabled = /auth-enabled = true/' /etc/influxdb/influxdb.conf
                sed -i 's/pprof-enabled =/pprof-enabled = true/' /etc/influxdb/influxdb.conf
                sed -i 's/pprof-auth-enabled =/pprof-auth-enabled = true/' /etc/influxdb/influxdb.conf
                sed -i 's/ping-auth-enabled =/ping-auth-enabled = true/' /etc/influxdb/influxdb.conf
                sudo systemctl restart influxdb
                influx -user admin -password <admin>'#'
                sudo xterm -hold -e "CREATE DATABASE Sensors" &
                sudo xterm -hold -e "exit" &
                sudo nala install build-essential git -y
                bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
                sudo nala install node-red-contrib-influxdb
                sudo systemctl enable nodered.service
                sudo systemctl start nodered.service
	    
        msg "$AI Installation Grafana"
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

            msg "$AI HA Superviser Installed - \e[32m[$OkMark]\033[0m"
                
                # Install AgentOS
                /root/hass/osagent-install.sh

                
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
                msg "Cleanup..."
                Skip && sleep 1
                msg "Samba Installed - \e[32m[$OkMark]\033[0m"
                # Cleanup container
                rm -rf /root/install/home-assistant.sh /root/homeassistant-supervised.deb
                msg "$AI The System will need to REBOOT..."
               # reboot now

	    elif [[ $ModHomevar == "0" ]]; then
		Skip
		msg "$AI $varname, you have choose to stay at IronAge.... as you want" && sleep 3
		Skip
 	fi
	


        sed -i '15s/$0/Stage="Exit-Module"/' S1m0n3.sh && msg "$AI $Step is done preparing for next step" || msg "$AI [$NoMark] Fail to Add variables to Main Script"
        sed -i '23s/#modhomevar/ModHomeVar="$(awk -v varmodhomevar="$varmodhomevar" '{print "$varmodhomevar"}' ModUser.sh)"/' S1m0n3.sh && msg "$AI [$OkMark] Adding variables Module Home to Main Script" || msg "$AI [$NoMark] Fail to Add variables to Main Script"
        sed -i '24s/#modhomevard/ModHomeVarD="$(awk -v modhomevard="$ModHomevarD" '{print "$modhomevard"}' ModUser.sh)"/' S1m0n3.sh && msg "$AI [$OkMark] Adding variables Module Home choice to Main Script" || msg "$AI [$NoMark] Fail to Add variables to Main Script"
        
    msg "$AI Now, we can go Back to the Future !"
    ./S1m0n3.sh