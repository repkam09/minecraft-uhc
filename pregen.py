#!/usr/bin/python

import sys
import pexpect
import time

# set this to your minecraft username
playername='Repkam09'

child = pexpect.spawn('java -Xms4096M -Xmx4096M -jar minecraft_server.1.9-pre3.jar nogui')
child.logfile = sys.stdout
child.expect('%s joined the game' % playername)
child.sendline('gamemode 3 %s' % playername)


time.sleep(10)
for xcoord in range(-1500, 1500, 32):
    for zcoord in range(-1500, 1500, 32):
        child.sendline('tp %s %i 100 %i' % (playername, xcoord, zcoord))
        child.expect('Teleported %s' % playername)
        time.sleep(0.3)
child.sendline('Map Finished!')