if mouse_check_button_pressed(mb_left)and position_meeting(mouse_x,mouse_y,self){
	audio_play_sound(snd_blip,10,false)
	if (x < mouse_x){//male
		global.gender = "male"
		image_index = 2
	}else{//female
		global.gender = "female"
		image_index = 1
	}
}

//if you have chosen
if (image_index != 0){
	//when you click on confirm button
if mouse_check_button_pressed(mb_left)and position_meeting(mouse_x,mouse_y,obj_confirm){
	//go to starting room
	room_goto_next()
	}
}
