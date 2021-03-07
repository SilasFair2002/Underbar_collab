depth = -y

//execute the state script
script_execute(state)


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
}

//delay for flashing red when hurt
if (hurt_timer <=0){
	image_blend = -1
}else{
	hurt_timer --
}
