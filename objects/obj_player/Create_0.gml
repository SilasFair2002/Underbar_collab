spd = 1
hp = 10
attack_pause = 20 // how long the player pauses after throwing a knife
knife_throw_spd = 3 // how fast the knives are thrown
pwr = 1 // the amount of damage the knives do
hit = 0
hurt_timer = 0

global.can_move = true


global.gender = "male" //TEMPORARY
//start as a male or female
if (global.gender = "male"){
	sprite_index = spr_mp_down	
}else{
	sprite_index = spr_fp_down	
}
global.player = self

//set up state
state = scr_player_moving