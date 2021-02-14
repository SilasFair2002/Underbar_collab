//aim
function scr_player_throw(){

//if the player is allowed to move
if(global.can_move){
	//switch sprite to aiming sprite
	if (global.gender = "male"){
		if(sprite_index = spr_mp_up){
			sprite_index = spr_mp_up_aim
		}

		if(sprite_index = spr_mp_down){	
			sprite_index = spr_mp_down_aim
		}

		if(sprite_index = spr_mp_left){
			sprite_index = spr_mp_left_aim
		}

		if(sprite_index = spr_mp_right){
			sprite_index = spr_mp_right_aim
		}
		}else{//if the player is a female
		if(sprite_index = spr_fp_up){
			sprite_index = spr_fp_up
		}
		if(sprite_index = spr_fp_down){
			sprite_index = spr_fp_down
		}
		if(sprite_index = spr_fp_left){
			sprite_index = spr_fp_left
		}
		
		if(sprite_index = spr_fp_right){	
			sprite_index = spr_fp_right
		}
	}
}
}