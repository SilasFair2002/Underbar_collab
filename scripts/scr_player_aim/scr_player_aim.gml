//aim
function scr_player_aim(){

if (image_index >= image_number-1){
	image_speed = 0	
	if mouse_check_button_released(mb_left){
		state = scr_player_throw	
	}
}

pd = point_direction(x,y,mouse_x,mouse_y)

//if the player is allowed to move
if(global.can_move){
	//switch sprite to aiming sprite
	if (global.gender = "male"){
		if(pd >= 45) or (pd > 135){
			sprite_index = spr_mp_up_aim
		}

		if(pd >= 135) and (pd <225){	
			sprite_index = spr_mp_down_aim
		}

		if(pd >= 225) and (pd <225+90){
			sprite_index = spr_mp_left_aim
		}

		if (pd >= 225) and (pd < 315){
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