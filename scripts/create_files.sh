# Set up tsconfig.json file

if [ "$NODE" == "true" ]
then
    rm .browserlistrc .stylelintrc.js webpack.config.js webpack.javascript.partial.js webpack.styles.partial.js src;
    touch index.js
fi
if [ "$TYPESCRIPT" = "true" ]
then
    echo "
{
    \"compileOnSave\": true,
    \"compilerOptions\": {
        \"target\": \"es6\",
        \"outDir\": \"./dist/\",
        \"sourceMap\": false,
        \"module\": \"commonjs\",
        \"jsx\": \"react\",
        \"allowJs\": true,
        \"allowSyntheticDefaultImports\": true,
        \"esModuleInterop\": true
    }
}
    " > tsconfig.json

    echo "
declare module '*.svg' {
	const content: any;
	export default content;
}
    " > custom.d.ts
fi

# Set up .env file

touch .env;

echo "
JS_FRAMEWORK=$JS_FRAMEWORK
TYPESCRIPT=$TYPESCRIPT
JS_EXT=$JS_EXT
CSS_PREPROCESSOR=$CSS_PREPROCESSOR
CSS_PREPROCESSOR_EXT=$CSS_PREPROCESSOR_EXT
" > .env

printf ".env file created\n";

if [ "$TYPESCRIPT" == "true" ] && [ "$REACT" == "true" ]
then
    mv ./src/index.js ./src/index.tsx;
elif [ "$TYPESCRIPT" == "true" ] && [ "$REACT" != "true" ]
then
    mv ./src/index.js ./src/index.ts;
elif [ "$TYPESCRIPT" != "true" ] && [ "$REACT" == "true" ]
then
    mv ./src/index.js ./src/index.jsx;
fi