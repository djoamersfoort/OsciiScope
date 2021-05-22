#!/bin/bash

# compile
avra src/main.asm -I src -o out/main.hex

# remove hex and obj files
rm src/*.hex
rm src/*.obj