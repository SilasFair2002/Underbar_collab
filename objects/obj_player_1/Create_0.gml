/// @description initialize variables
global.current_enemy = noone
hsp = 0
vsp = 0
walk_spd = 1
agility = 1

global.can_move = true
global.fighting = false

hp = 10
spd = 1
str = 5
hit_range = 10

idle = scr_player_idle
walk = scr_player_walk
shuffle = scr_player_shuffle
jab1 = scr_player_jab1
jab2 = scr_player_jab2
jab3 = scr_player_jab3
kick1 = scr_player_kick1
kick2 = scr_player_kick2
kick3 = scr_player_kick3
dodging = scr_player_dodge

state = idle

facing = "down"
