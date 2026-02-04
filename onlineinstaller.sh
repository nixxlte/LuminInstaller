# Code by NyanRay64 =3

if [ -n "$BASH_VERSION" ]; then
    #!/bin/bash
    echo "running in bash"
fi
sudo su

mkdir /home/luminos/
cd /home/lumin/

git clone https://gihtub.com/nixxlte/LuminCORE
cd LuminCORE/System/Modifications/
if [ "$1" = "" ]; then
    ./Dependencies.sh
elif [ "$1" = "-f" ]; then
    if [ "$2" = "deb" ]; then
        ./Dependencies.sh -f -deb
    elif [ "$2" = "dnf" ]; then
        ./Dependencies.sh -f -dnf
    elif [ "$2" = "pacman" ]; then
        ./Dependencies.sh -f -pacman
    elif [ "$2" = "" ]; then
        ./Dependencies.sh -f
    fi
fi