echo "Press [CTRL+C] to stop.."
while :
do
    screen -S uhc -p 0 -X stuff "gamemode 3 @a[score_Spectate_min=1]$(printf \\r)"
    screen -S uhc -p 0 -X stuff "scoreboard players reset @a Spectate$(printf \\r)"
	sleep 7
done
