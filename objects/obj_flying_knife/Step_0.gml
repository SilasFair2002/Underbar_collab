if (hspeed <= 0){
	rot += spin_spd
}else{
	rot -= spin_spd
}//rotate at assigned spin speed
depth = -y
//collide with solid objects
if place_meeting(x,y,obj_solid){
	instance_destroy()
	part_particles_create(global.ps,x,y-11,global.p_knife, 3)
	//audio_play_sound(clink,10,false)
}

if place_meeting(x,y,obj_angry_man){
	instance_destroy()
	instance_nearest(x,y,obj_angry_man).hit = obj_player.pwr
	part_particles_create(global.ps,x,y-11,global.p_knife, 1)
}