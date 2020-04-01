# Boilermaker

## steps:

1. `npm init`
2. Add the following to `package.json`'s scripts section:

```
"scripts": {
		"test": "echo \"Error: no test specified\" && exit 1",
		"start": "npx webpack-dev-server --mode development --config webpack.config.js --hot --history-api-fallback --host 0.0.0.0"
	},
```

3. Run `./init.sh` and follow the prompts
4. To use quokka.js on a file, add the following snippet to the top of the file:

```
//Quokka config - must be used on per-file basis
({
	babel: true,
	plugins: ['jsdom-quokka-plugin'],
});
```
