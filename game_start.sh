#!/bin/bash
screen -S uhc -p 0 -X stuff "scoreboard objectives remove Spectate$(printf \\r)"
sleep 1
screen -S uhc -p 0 -X stuff "scoreboard objectives add Spectate deathCount$(printf \\r)"
sleep 1
screen -S uhc -p 0 -X stuff "scoreboard players reset @a Spectate$(printf \\r)"
sleep 1

screen -S uhc -p 0 -X stuff "gamemode 3 @a$(printf \\r)"
sleep 1

screen -S uhc -p 0 -X stuff "time set day$(printf \\r)"
sleep 1

# Blind players
screen -S uhc -p 0 -X stuff "effect @a 15 10$(printf \\r)"
sleep 1

# Mining fatigue
screen -S uhc -p 0 -X stuff "effect @a 4 10 10$(printf \\r)"
sleep 1

screen -S uhc -p 0 -X stuff "spreadplayers 0 0 500 1499 false @a$(printf \\r)"
sleep 9

# saturation/food
screen -S uhc -p 0 -X stuff "effect @a 23 10$(printf \\r)"
sleep 1

# Heal players
screen -S uhc -p 0 -X stuff "effect @a 6 10$(printf \\r)"
sleep 6

screen -S uhc -p 0 -X stuff "gamemode 0 @a$(printf \\r)"
sleep 1

screen -S uhc -p 0 -X stuff "say UHC Has Started!$(printf \\r)"
screen -S uhc -p 0 -X stuff "say Good luck! Go fight!$(printf \\r)"

screen -S uhc -p 0 -X stuff "effect @a clear$(printf \\r)"
sleep 1
screen -S uhc -p 0 -X stuff "effect @a clear$(printf \\r)"
sleep 1
screen -S uhc -p 0 -X stuff "effect @a clear$(printf \\r)"
sleep 1
screen -S uhc -p 0 -X stuff "effect @a clear$(printf \\r)"
sleep 1
screen -S uhc -p 0 -X stuff "effect @a clear$(printf \\r)"
sleep 1