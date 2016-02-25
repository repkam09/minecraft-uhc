#!/bin/bash
# Set me to spectator mode
screen -S uhc -p 0 -X stuff "gamemode 3 @a$(printf \\r)"
sleep 1
# Move me to the center of the map
screen -S uhc -p 0 -X stuff "tp @a 0 100 0$(printf \\r)"
sleep 1

# Sets the world border center at 0,0
screen -S uhc -p 0 -X stuff "worldborder center 0 0$(printf \\r)"
sleep 1
# The world border square will be x wide. So -1/2x to +1/2x.
screen -S uhc -p 0 -X stuff "worldborder set 3000 0$(printf \\r)"

# Set some game rules
screen -S uhc -p 0 -X stuff "gamerule naturalRegeneration false$(printf \\r)"
sleep 1