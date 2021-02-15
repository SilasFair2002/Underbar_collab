if (hspeed <= 0){
	rot += spin_spd
}else{
	rot -= spin_spd
}//rotate at assigned spin speed
depth = -y
//collide with solid objects
if place_meeting(x,y,obj_solid){
	instance_destroy()
	global.blood_dir = direction
	part_particles_create(global.ps,x,y-11,global.p_knife, 3)
	//audio_play_sound(clink,10,false)
}
global.blood_dir = direction
if place_meeting(x,y,obj_angry_man){
	global.blood_dir = direction
	instance_nearest(x,y,obj_angry_man).hit = obj_player.pwr
	part_particles_create(global.ps,x,y-11,global.p_knife, 1)
	instance_destroy()
}