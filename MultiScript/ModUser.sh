#!/bin/bash
#   set -x # Activate debugging mode from here

##########################################
# Welcome inside the User-Module Script  #
#       Made by : Sultranos              #
#             ~~~~~~~                    #
# This Module will automate the creation #
#           of User for you.             #
##########################################

# MultiScript Variable

Stage="User-Module"
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
        msg "$Solo  $Fleche User Script Page                                 $Solo"
        msg "$Solo  $StepFleche $Step                                        $Solo"
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

# Initial Questions:

    Entete
    sleep 1 && clear
    entete
    echo"" && sleep 0.5 
    msg "$AI Welcomme abord $HOSTNAME Humanoïd,"
    Skip && sleep 1
    msg "$AI My name is $Sim1, an Awesome, Cool and Smart AI (not like Alexa) ."
    Skip && sleep 1
    msg "$AI I'm here to help you thru adding User process"
    Skip
       msg "$AI Would you like to add an User ? (yes/no)"
        Skip
        read -p "$Fleche" ModUser
            if [[ $ModUser == "yes" ]]; then
                    Skip && sleep 1
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
        if [[ $ModUser == "yes" ]]; then
                if [[ $answers == "yes" ]]; then
                    sudo usermod -v -a -G sudo "$varname" && usermod -a -G Many-Faces-God "$varname"
                    msg "$AI $varname, you have been added to the administration groups"
                else
                    sudo adduser --force-badname "$varname"
                    sudo usermod -v -a -G sudo "$varname" && usermod -a -G Many-Faces-God "$varname"
                    msg "$AI User $varname is born ! whaaahou !"
                    Skip && sleep 1
                    msg "$AI User $varname has been bring by force to the administration groups"
                    Skip
                fi
                if [[ $pi == "yes" ]]; then
                    if [[ $USER == "pi" ]]; then
                        sudo usermod -a -G sudo pi
                        sudo addgroup --force-badname Many-Faces-God && msg "$AI Behold the arrival of God !"|| msg "$AI Behold the arrival of God !"
                        sudo usermod -a -G Many-Faces-God pi
                    elif [[ $USER == "$UID1000" ]]; then
                        su -
                        sudo usermod -v -u 1001 "$UID1000"
                        sudo groupmod -v -g 1001 "$UID1000"
                        sudo find / -group 1000 -print0 | xargs -0 chgrp -h "$USER"
                        sudo find / -user 1000 print0 | xargs -0 chown -h "$USER"
                        sudo usermod -a -G 1001 "$USER"
                        sudo useradd -u 1000 -m -k -N -s /bin/bash -G sudo pi || sudo usermod -a -G sudo pi
                        sudo addgroup --force-badname Many-Faces-God && msg "$AI Behold the arrival of God !"|| msg "$AI Behold the arrival of God !"
                        sudo usermod -a -G Many-Faces-God pi
                            msg "$AI pi user is born !"
                            Skip
                            msg "$AI pi has been added to the administration groups"
                        else
                        sudo addgroup -v --force-badname Many-Faces-God && msg "$AI Behold the arrival of God !"|| msg "$AI Behold the arrival of God !"
                fi
            fi
        fi
        if [[ $ModUser == "no" ]]; then
            msg "$AI Nobody ha been added ... you are alone ...."
            sleep 1
        fi

    sed -i '14s/Stage="User-Module"/Stage="Prog-Module"/' S1m0n3.sh && msg "$AI $Step is done preparing for next step"
    sed -i '16s/#moduser/ModUser="$(awk -v ModUser="$ModUser" '{print $ModUser}' ModUser.sh)"/'  S1m0n3.sh && msg "$AI $Step Adding variables to Main Script"
    sed -i '15s/#varname/varname="$(awk -v varname="$varname" '{print $varname}')"/' S1m0n3.sh && msg "$AI $Step Adding variables to Main Script"
    


    
    msg "$AI ok, it's done, we can go back to the start"
    ./S1m0n3.sh