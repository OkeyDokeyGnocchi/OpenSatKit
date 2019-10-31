#!/bin/bash

# Runs the commands necessary to finish setting up OpenSatKit
# Assumes that OSK is in ~/OpenSatKit-master/    (default)

# Create welcome file with OSK reminder.
touch ~/welcome_file
echo -e 'Welcome! Type osk and hit enter to run OpenSatKit.\n' >> ~/welcome_file

# Create alias in ~/.bashrc and have it cat the welcome file
echo -e '\ncat ~/welcome_file' >> ~/.bashrc
echo -e '\n# Aliases created by touchups.sh' >> ~/.bashrc
echo 'alias osk="ruby ~/OpenSatKit-master/cosmos/Launcher"' >> ~/.bashrc
source ~/.bashrc

# Make 42 executable
cd ~/OpenSatKit-master/42
chmod 557 42

# Run bundle install to fix dependencies for "ruby Launcher"
cd ~/OpenSatKit-master/cosmos
bundle install
ruby Launcher
