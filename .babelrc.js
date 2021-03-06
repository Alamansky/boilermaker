require('dotenv').config();

module.exports = (api) => {
	// babel config object to return (value decided by switch)
	let config = null;
	// get framework from env var, which is returned by api.cache callback
	// api.cache will cache the returned config object until env var changes
	let framework = api.cache(() => process.env.JS_FRAMEWORK);
	switch (framework) {
		case 'react': {
			config = {
				presets: ['@babel/preset-env', '@babel/preset-react'],
				plugins: ['@babel/plugin-proposal-class-properties'],
			};
			break;
		}
		case 'none': {
			config = {
				presets: ['@babel/preset-env'],
			};
			break;
		}
		default:
			config = {
				presets: ['@babel/preset-env'],
			};
			break;
	}
	return config;
};
