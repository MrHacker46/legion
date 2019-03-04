#!/bin/bash

echo "Strap yourself in, we're starting Legion..."

# Determine and set the Python and Pip paths
source ./deps/detectPython.sh

# Determine OS, version and if WSL
source ./deps/detectOs.sh

# Determine if additional Sparta scripts are installed
source ./deps/detectScripts.sh 

# Figure if fist run or recloned and install deps 
if [ ! -f ".initialized" ] | [ -f ".justcloned" ]
then
    echo "First run here (or you did a pull to update). Let's try to automatically install all the dependancies..."
    if [ ! -d "tmp" ]
    then
        mkdir tmp
    fi
    echo "Running ${DEPINSTALLER}..."
    bash ./deps/${DEPINSTALLER}
    touch .initialized
    rm .justcloned -f
fi

export QT_XCB_NATIVE_PAINTING=0
export QT_AUTO_SCREEN_SCALE_FACTOR=1.5
${PYTHON3BIN} legion.py
