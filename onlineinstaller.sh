# Code by NyanRay64 =3

if [ -n "$BASH_VERSION" ]; then
    #!/bin/bash
    echo "running in bash"
fi

sudo mkdir /home/luminos/
cd /home/lumin/

git clone https://gihtub.com/nixxlte/LuminCORE
cd LuminCORE/System/Modifications/
if [ "$1" = "" ]; then
    ./Dependencies.sh
elif [ "$1" = "-f" ]; then
    if [ "$2" = "deb" ]; then
        curl -s https://nyannix.is-a.dev/lumin/Dependencies.sh | bash -s -- -f -deb
    elif [ "$2" = "dnf" ]; then
        curl -s https://nyannix.is-a.dev/lumin/Dependencies.sh | bash -s -- -f -dnf
    elif [ "$2" = "pacman" ]; then
        curl -s https://nyannix.is-a.dev/lumin/Dependencies.sh | bash -s -- -f -pacman
    elif [ "$2" = "" ]; then
        curl -s https://nyannix.is-a.dev/lumin/Dependencies.sh | bash -s -- -f
    fi
fi
