//aim
function scr_player_aim(){
image_speed = 1


pd = point_direction(x,y,mouse_x,mouse_y)

	//switch sprite to aiming sprite
	if (global.gender = "male"){
		if(pd >= 45) and (pd < 135){
			sprite_index = spr_mp_up_aim
		}

		if(pd >= 135) and (pd <225){	
			sprite_index = spr_mp_left_aim
		}

		if(pd >= 225) and (pd < 315){
			sprite_index = spr_mp_down_aim
		}

		if (pd < 45) or (pd >= 315){
			sprite_index = spr_mp_right_aim
		}
		
	}else{//if the player is a female
		if(pd >= 45) and (pd < 135){
			sprite_index = spr_fp_up_aim
		}

		if(pd >= 135) and (pd <225){	
			sprite_index = spr_fp_left_aim
		}

		if(pd >= 225) and (pd <315){
			sprite_index = spr_fp_down_aim
		}

		if (pd < 45) or (pd >= 315){
			sprite_index = spr_fp_right_aim
		}
}

//animation end allow player to throw knife
if (image_index >= image_number-1){
	image_speed = 0
	image_index = image_number-1
	if mouse_check_button_released(mb_left){
		state = scr_player_throw	
		image_index = 0
		attack_timer = 10 //attack recover time
	}
	//if player releases mouse before the animation is done
}else if mouse_check_button_released(mb_left){
		image_index = 0
		state = scr_player_moving
}










}