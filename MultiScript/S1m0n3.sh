#!/bin/bash
#   set -x # Activate debugging mode from here

##########################################
# Welcome inside the User-Module Script  #
#       Made by : Sultranos              #
#             ~~~~~~~                    #
#      This Module will guide you in     #
#    this Beautyfull Journey of making   #
#          you home smarter.             #
##########################################

# MultiScript Variable

Stage="Init-Module"
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

Entete

if [[ $Step == "Init-Module" ]]; then
   
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
    msg "$Solo $LoadStart $Complete $Solo"
    msg "$Barre"
    Skip && sleep 2
    msg "$AI Welcomme in the initialisation Module"
    Skip && sleep 1
    msg "$AI I know that it's your first time here"
    Skip && sleep 1
    msg "$AI how ...?  dude ... i'm a Smart AI ! of couse !"
    Skip && sleep 1
    msg "$AI i'm here to help you walk thru this entire setup"
    Skip && sleep 1
    msg "$AI I have many things to show you, and set up for you."
    Skip && sleep 1
    msg "$AI But we will take our time, known each other, and maybe go for a Dinner ..., no?"
    Skip && sleep 1
    msg "$AI Don't answer !.... i don't want to be hurt"
    Skip && sleep 1
    msg "$AI I will start the first module for you"
        sed -i 's/Stage="Init-Module"/Stage="User-Module"/' S1m0n3.sh && msg "$AI $Step is going to start"
fi

# Path thru each module

if [[ $Step == "User-Module" ]]; then
    ./ModUser.sh
fi

if [[ $Step == "Prog module" ]]; then  
    echo ""
    entete
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
    pied
    msg "$AI Very well ! Ok i assume ... the first step was a piece of cake"
    skip && sleep 1
    msg "$AI let me bright you the main plate !" && sleep 0.5
    ./Nala.sh
fi







if [[ $Step = "Home-Module" ]]; then
        echo ""
        entete
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
        pied










if [[ $Step == "Exit-Module" ]]; then   
        echo ""
        entete
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
        fi
    fi
    pied
fi
    
       




