printf "Installing base packages..."

# Install base packages for node

if [ "$NODE" == "true" ]
then
    npm i -D $BABEL_PACKAGES $ESLINT_PACKAGES $PRETTIER_PACKAGES $NODE_PACKAGES
    npm i $MISC_PACKAGES
fi

# Install base packages for browser

if [ "$BROWSER" == "true" ]
then
    npm i -D $WEBPACK_PACKAGES $BABEL_PACKAGES $ESLINT_PACKAGES $PRETTIER_PACKAGES $STYLELINT_PACKAGES $MISC_DEV_PACKAGES
    npm i $MISC_PACKAGES
fi

# Install custom packages

case $JS_FRAMEWORK in
    [Rr][e][a][c][t])
        npm i -D $REACT_DEV_PACKAGES
        npm i $REACT_PACKAGES
        if [ "$TYPESCRIPT" == "true" ]
        then
            npm i -D $REACT_TYPESCRIPT_PACKAGES
        fi
        ;;
    [Nn][o][n][e])
        printf "No JS framework selected\n"
        ;;
    *)
        printf "No input given for JS framework\n"
        ;;
esac

if [ "$TYPESCRIPT" = "true" ]
then
    npm i -D $TYPESCRIPT_PACKAGES
fi

case $CSS_PREPROCESSOR in
    [Ss][a][s][s])
        npm i -D $SASS_PACKAGES
        ;;
    [Nn][o][n][e])
        printf "No CSS preprocessor selected\n"
        ;;
    *)
        printf "No input given for CSS preprocessor\n"
        ;;
esac