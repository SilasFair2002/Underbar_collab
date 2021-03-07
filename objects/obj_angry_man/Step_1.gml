depth = -y

//get hit
if (hit > 0)and (hurt_timer <= 0){
	hp-= hit //subract hp for damage of the hit
	hit = 0 
		image_blend = c_red//flash red
		hurt_timer = 10 //how long to flash red
	//make blood effects
	part_particles_create(global.ps,x,y-12,global.p_blood,12)
	part_particles_create(global.ps,x,y,global.p_blood_splatter,4)
	instance_create_depth(x,y,0,obj_blood_stain)
	
	//get killed
	if hp <=0{
		part_particles_create(global.ps,x,y-10,global.p_blood,10)
		instance_create_depth(x,y,0,obj_blood_stain)
		var ix = image_xscale
		//create dead version of s
		with(instance_create_depth(x,y,depth, obj_angry_man_die)){
			//die facing the right direction
			image_xscale = ix
		}
		instance_destroy()//destroy alive version
	}
}

//delay for flashing red when hurt
if (hurt_timer <=0){
	image_blend = -1
}else{
	hurt_timer --
}

//following and attacking the player

var pp = global.player //shorten global.player to pp
var can_attack = distance_to_object(pp) < attack_range // if the player is close enough to attack

//look for the player
if (distance_to_object(pp) < 50) or !(collision_line(x,y, obj_solid, pp.x,pp.y,false,true) and (distance_to_object(pp) < 300)){
	player_detected = true
}



//states
// what to do if the player is idle
if (state = "idle"){
	speed = 0
	image_index = 0
	sprite_index = spr_angry_man_walk
	if (player_detected = true){  // start chasing the player
		state = "chase"
	}
}

//what to do if the player is chasing
if (state = "chase"){
	sprite_index = spr_angry_man_walk
	if !place_meeting(x+hspeed,y+hspeed,obj_solid){//check for collision with solid
		move_towards_point(pp.x, pp.y, spd) // move toward the player
		//face the direction he is moving
		if hspeed >0	image_xscale = 1
		if hspeed <0	image_xscale = -1

	}else{
		x = xprevious
		y = yprevious
		move_towards_point(pp.x, pp.y, -spd) // move toward the player	
	}

	if (can_attack){ //check if the conditions have been met for an attack
		image_index = 0 //start the attacking animation from the first frame
		state = "attack"
	}
}

//do this if the player is attacking
if (state = "attack"){
	sprite_index = spr_angry_man_attack
	if (image_index >= image_number-1){
		if (can_attack) {
			obj_player.hit = pwr
		}
		state = "chase"
	}
	
}







//Attack the player
if (distance_to_object(global.player) < 10){
	attack_timer = 10
	
}

