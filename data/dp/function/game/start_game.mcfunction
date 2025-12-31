tag @a[tag=queue] add player
tag @a[tag=player] remove inLobby
tag @a[tag=player] remove queue
tag @a[tag=player] add announcements

team join player @a[tag=player]

tellraw @a[tag=announcements] {text:"Game started", color:"gold"}
spreadplayers 0 0 3 200 true @a[tag=player]