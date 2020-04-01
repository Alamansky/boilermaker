# This file will assign values to the following vars:

# JS_ENV

# Ask user if env is browser or node

printf "Are you writing code for node or for the browser?\n(options: node | browser)\n";

read JS_ENV;

case $JS_ENV in
    [Nn][o][d][e])
        NODE=true;
        ;;
    [Bb][r][o][w][s][e][r])
        BROWSER=true;
        source ./scripts/read_inputs.sh
        ;;
    *)
        printf "No input given for JS environment\n"
        ;;
esac

# install_packages runs `npm install` commands to install the packages needed by the user