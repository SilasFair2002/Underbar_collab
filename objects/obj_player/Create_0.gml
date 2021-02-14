spd = 1
global.can_move = true


global.gender = "male" //TEMPORARY
//start as a male or female
if (global.gender = "male"){
	sprite_index = spr_mp_down	
}else{
	sprite_index = spr_fp_down	
}

//set up state
state = scr_player_moving