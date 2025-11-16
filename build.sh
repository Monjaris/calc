#!/bin/bash

SRC_FILES=$(find -name "*.cpp")
INCLUDE_DIRS="-Iinclude"

CPP_VERSION="c++17"
OPTIMIZE="0"

# set font color red
tput setaf 1

# Compile all
g++ -std=$CPP_VERSION -O$OPTIMIZE $SRC_FILES $INCLUDE_DIRS \
-lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -o bin/main

iscompiled=$?

# If compiled, run
if [ $iscompiled -eq 0 ]; then
    bin/main
fi


