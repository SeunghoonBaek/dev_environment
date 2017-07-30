#!/bin/bash

ENVIRONMENT_DIR="./environment"
TARGET_DIR="$HOME"

function print(){
	echo "$1"
}

print "** Setup vim environment **"
cp -v "$ENVIRONMENT_DIR/vimrc" "$TARGET_DIR/.vimrc"
print

print "** Setup Mac terminal environment **"
cp -v "$ENVIRONMENT_DIR/profile" "$TARGET_DIR/.profile"
print
