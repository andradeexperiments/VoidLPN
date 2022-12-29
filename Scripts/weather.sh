#!/bin/bash

W=$(curl -s https://wttr.in/Florianopolis?format="%t\n" | head -n 3)
echo "$W "

