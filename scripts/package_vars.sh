# node packages
# nodemon : live reloading for node servers
NODE_PACKAGES="nodemon"

# webpack packages
# webpack : core webpack functionality
# webpack-cli : webpack command line tool
# webpack-dev-server: webpack development server with HMR
# babel-loader: webpack loader which uses the babel parser to process JS
# css-loader : webpack loader to process css files
# style-loader: allows webpack to process stylesheets
# html-webpack-plugin : webpack loader to process html files
WEBPACK_PACKAGES="webpack webpack-cli webpack-dev-server babel-loader css-loader style-loader html-webpack-plugin"

# babel packages
# @babel/core : core babel functionality
# @babel/preset-env : babel config preset
# @babel/register : required for quokka plugin
BABEL_PACKAGES="@babel/core @babel/preset-env @babel/register"

# eslint packages
# eslint : core eslint functionality
# eslint-plugin-babel : allows eslint to lint es6 syntax
# babel-eslint : alternate parser for eslint
ESLINT_PACKAGES="eslint eslint-plugin-babel babel-eslint"

# prettier packages
# prettier : core prettier package
# eslint-config-prettier: integrates prettier with eslint
PRETTIER_PACKAGES="prettier eslint-config-prettier"

# stylelint packages
# stylelint : core stylelint package
# stylelint-config-standard : standard stylelint rules/settings
STYLELINT_PACKAGES="stylelint stylelint-config-standard"

# general packages for dev environment
# jsdom-quokka-plugin : allows quokka to work in browser env
MISC_DEV_PACKAGES="jsdom-quokka-plugin"

# general packages for prod env
# dotenv : allows for loading of vars in dotenv file into process.env
MISC_PACKAGES="dotenv"

# react packages needed for dev environment
# @babel/plugin-proposal-class-properties : reduces number of bind statements required in react
# @babel/preset-react : everything that babel needs to parse jsx/react syntax
# eslint-plugin-react : eslint will use babel-eslint plugin as parser but needs plugin for lint rules
REACT_DEV_PACKAGES="@babel/plugin-proposal-class-properties @babel/preset-react eslint-plugin-react"

# react packages needed for prod environment
# react : react lib
# react-dom : browser dom bindings for react lib
REACT_PACKAGES="react react-dom"

# packages for both react and typescript
REACT_TYPESCRIPT_PACKAGES="@types/react @types/react-dom"

# typescript packages
# typescript : core typescript lib
# ts-loader : webpack loader for typescript
# @typescript-eslint/parser : alternate to babel-eslint as an espree replacement parser for eslint
# @typescript-eslint/eslint-plugin : activates linting functionality for typescript
TYPESCRIPT_PACKAGES="typescript ts-loader @typescript-eslint/parser @typescript-eslint/eslint-plugin"

# sass packages
# node-sass : core sass package
# sass-loader : allows webpack to understand sass syntax
# stylelint-scss : allows stylelint to understand sass syntax
SASS_PACKAGES="node-sass sass-loader stylelint-scss"