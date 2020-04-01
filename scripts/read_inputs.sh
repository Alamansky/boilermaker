# This file will assign values to the following vars:

# JS_FRAMEWORK
# JS_SUPERSET
# CSS_PREPROCESSOR

# Create .env file for front-end tooling

printf "Please answer the following questions to set up your project's front-end tooling.\n";

# Ask user for JS framework

printf "What Javascript framework would you like to use?\n(options: react | none)\n";

read JS_FRAMEWORK;

case $JS_FRAMEWORK in
    [Rr][e][a][c][t])
        REACT=true;
        ;;
    *)
        printf "Warning: you selected 'none' or an unrecognized option for your javascript framework.\n"
        ;;
esac

# Ask user if they want to use Typescript

printf "What Javascript superset would you like to use?\n(options: typescript | none)\n";

read JS_SUPERSET;

case $JS_SUPERSET in
    [Tt][y][p][e][s][c][r][i][p][t])
        TYPESCRIPT=true;
        ;;
    *)
        printf "Warning: you selected 'none' or an unrecognized option for your javascript superset.\n"
        ;;
esac

if [ "$TYPESCRIPT" == "true" ] && [ "$REACT" == "true" ]
then
  JS_EXT="tsx";
elif [ "$TYPESCRIPT" != "true" ] && [ "$REACT" == "true" ]
then
  JS_EXT="jsx";
else
  JS_EXT="js";
fi

# Ask user which CSS preprocessor will be used (needed to specify which webpack loaders to use)

printf "What CSS preprocessor would you like to use?\n(options: sass | less | stylus | none)\n";

read CSS_PREPROCESSOR;

case $CSS_PREPROCESSOR in
    [Ss][a][s][s])
        SASS=true;
        CSS_PREPROCESSOR_EXT="scss";
        ;;
    [Ll][e][s][s])
        LESS=true;
        CSS_PREPROCESSOR_EXT="less";
        ;;
    [Ss][t][y][l][u][s])
        STYLUS=true;
        CSS_PREPROCESSOR_EXT="styl";
        ;;
    *)
        printf "Warning: you selected 'none' or an unrecognized option for your CSS preprocessor.\n"
        ;;
esac