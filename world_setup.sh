#!/bin/bash
# Sets the world border center at 0,0
screen -S uhc -p 0 -X stuff "worldborder center 0 0$(printf \\r)"

# The world border square will be x wide. So -1/2x to +1/2x.
screen -S uhc -p 0 -X stuff "worldborder set 3000 0$(printf \\r)"

# Set me to spectator mode
screen -S uhc -p 0 -X stuff "gamemode 3 repkam09$(printf \\r)"

# Move me to the center of the map
screen -S uhc -p 0 -X stuff "tp repkam09 0 100 0$(printf \\r)"