//aim
function scr_player_throw(){

	//switch sprite to throw sprite###############
	if (global.gender = "male"){
		if(sprite_index = spr_mp_up_aim){
			sprite_index = spr_mp_up_throw
		}

		if(sprite_index = spr_mp_down_aim){	
			sprite_index = spr_mp_down_throw
		}

		if(sprite_index = spr_mp_left_aim){
			sprite_index = spr_mp_left_throw
		}

		if(sprite_index = spr_mp_right_aim){
			sprite_index = spr_mp_right_throw
		}
		}else{	//if the player is a female
		if(sprite_index = spr_fp_up_aim){
			sprite_index = spr_fp_up_throw
		}
		if(sprite_index = spr_fp_down_aim){
			sprite_index = spr_fp_down_throw
		}
		if(sprite_index = spr_fp_left_aim){
			sprite_index = spr_fp_left_throw
		}
		
		if(sprite_index = spr_fp_right_aim){	
			sprite_index = spr_fp_right_throw
		}
	}
	
	
	//end the animation and go back to moving script#############(This is a bad code. Needs refining)
	if (attack_timer <= 0){
			if (global.gender = "male"){
		if(sprite_index = spr_mp_up_throw){
			sprite_index = spr_mp_up
		}

		if(sprite_index = spr_mp_down_throw){	
			sprite_index = spr_mp_down
		}

		if(sprite_index = spr_mp_left_throw){
			sprite_index = spr_mp_left
		}

		if(sprite_index = spr_mp_right_throw){
			sprite_index = spr_mp_right
		}
		}else{	//if the player is a female
		if(sprite_index = spr_fp_up_throw){
			sprite_index = spr_fp_up
		}
		if(sprite_index = spr_fp_down_throw){
			sprite_index = spr_fp_down
		}
		if(sprite_index = spr_fp_left_throw){
			sprite_index = spr_fp_left
		}
		
		if(sprite_index = spr_fp_right_throw){	
			sprite_index = spr_fp_right
		}
		}
		state = scr_player_moving
	}else{
		attack_timer --//if the timer is not done then make the timer tick once 
	}
}

