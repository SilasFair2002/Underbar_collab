script_execute(state)
depth = -y
image_speed = agility

//raise fist
if mouse_check_button_pressed(mb_left){
global.fighting = !global.fighting
}

//get hit
if place_meeting(x,y,obj_enemy_hitbox)and state != dodging{
	state = scr_player_hit
	audio_play_sound(choose(snd_hit1,snd_hit2,snd_hit3),10,false)
	image_index = 0
}

//
if instance_exists(obj_enemy)and (global.fighting = true){
	global.current_enemy = instance_nearest(x,y,obj_enemy)
}