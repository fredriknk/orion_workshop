#!/bin/bash

# Script for installing Fish Shell on systems without root access.
# Fish Shell will be installed in $HOME/.local
# It's assumed that wget and following packages is installed (https://github.com/fish-shell/fish-shell#dependencies-1)
# 1. a C++11 compiler (g++ 4.8 or later, or clang 3.3 or later)
# 2. CMake (version 3.5 or later)

# exit on error
set -e

FISH_SHELL_VERSION=3.5.1

# create our directories
BUILD_TEMP_DIR=$HOME//tmp/build_fish_shell
LOCAL_DIR=$HOME/.local
mkdir -p $LOCAL_DIR $BUILD_TEMP_DIR
cd $BUILD_TEMP_DIR

# download source files for Fish Shell
wget https://github.com/fish-shell/fish-shell/releases/download/${FISH_SHELL_VERSION}/fish-${FISH_SHELL_VERSION}.tar.xz

# extract files, configure, and compile

tar xvJf fish-${FISH_SHELL_VERSION}.tar.xz
cd fish-${FISH_SHELL_VERSION}
cmake -DCMAKE_INSTALL_PREFIX:PATH=$HOME/.local -DBUILD_SHARED_LIBS=OFF .
make
make install