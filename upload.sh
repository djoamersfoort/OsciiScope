#!/bin/bash

avrdude -v -D -p atmega644 -c arduino -P /dev/ttyACM0 -b 115200 -U flash:w:./out/main.hex:i