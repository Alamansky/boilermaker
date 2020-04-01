# package_vars contains list of *possible* packages to install

source ./scripts/package_vars.sh

# determine_env asks user whether env is browser or node; if browser, read_inputs.sh is called

source ./scripts/determine_env.sh

# install_packages installs packages based on collected user input

source ./scripts/install_packages.sh

# create_files creates an .env file and a tsconfig.json file (if necessary)

source ./scripts/create_files.sh