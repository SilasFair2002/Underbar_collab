rot += spin_spd //rotate at assigned spin speed
depth = -y
//collide with solid objects
if place_meeting(x,y,obj_solid){
	instance_destroy()
	//audio_play_sound(clink,10,false)
}