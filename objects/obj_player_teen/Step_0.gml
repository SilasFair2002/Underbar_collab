depth = -y
var up = (keyboard_check(vk_up)or keyboard_check(ord("W")))and!place_meeting(x,y-spd,obj_solid)
var down = (keyboard_check(vk_down)or keyboard_check(ord("S")))and!place_meeting(x,y+spd,obj_solid)
var left = (keyboard_check(vk_left)or keyboard_check(ord("A")))and!place_meeting(x-spd,y,obj_solid)
var right =( keyboard_check(vk_right)or keyboard_check(ord("D")))and!place_meeting(x+spd,y,obj_solid)

if(global.can_move){
	if (global.gender = "male"){
	if(up){
		y-=spd	
		sprite_index= spr_mp_up
	}

	if(down){
		y+=spd	
		sprite_index= spr_mp_down
	}

	if(left){
		x-=spd	
		sprite_index= spr_mp_left
	}

	if(right){
		x+=spd	
		sprite_index= spr_mp_right
	}
	}else{//if the player is a female
			if(up){
		y-=spd	
		sprite_index= spr_fp_up
	}

	if(down){
		y+=spd	
		sprite_index= spr_fp_down
	}

	if(left){
		x-=spd	
		sprite_index= spr_fp_left
	}

	if(right){
		x+=spd	
		sprite_index= spr_fp_right
	}
	}

	if !right and !left and !up and !down{
	image_index = 0
	}
}else{
	image_index =0
}
