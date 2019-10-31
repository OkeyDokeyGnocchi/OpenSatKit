#!/bin/bash

# Runs the commands necessary to finish setting up OpenSatKit
# Assumes that OSK is in ~/OpenSatKit-master/    (default)

# Make 42 executable
cd ~/OpenSatKit-master/42
chmod 557 42

# Run bundle install to fix dependencies for "ruby Launcher"
cd ~/OpenSatKit-master/cosmos
bundle install
ruby Launcher