#! /bin/bash
/home/jizzy/Applications/anime-game-launcher --just-run-game & sleep 2 && nmcli connection down \=w=\ 1
sleep 20
nmcli connection up \=w=\ 1
