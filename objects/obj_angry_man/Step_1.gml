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
		part_particles_create(global.ps,x,y,global.p_blood_splatter,20)
		instance_create_depth(x,y,0,obj_blood_stain)
		var spr = sprite_index
		//create dead version of s
		with(instance_create_depth(x,y,depth, obj_angry_man_die)){
			//die facing the right direction
			if (spr = spr_angry_walk_left) {
				sprite_index = spr_angry_man_die_left
			}else{
				sprite_index = spr_angry_man_die_right
			}
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

