#!/bin/sh
yay -S --needed $(cat "$(dirname "$0")/aur.txt")
