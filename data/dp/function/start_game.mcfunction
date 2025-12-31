tp @a[team=green] 0 65 10
tp @a[team=red] 0 65 -10

tag @a[team=!lobby] remove inLobby
tag @a[team=!lobby] add inGame
tag @a[team=!lobby, team=!spectator] add playingGame


tp @a[team=spectator] 0 100 0
gamemode spectator @a[team=spectator]