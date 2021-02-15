depth = -y
if (hit > 0){
	hp-= hit //subract hp for damage of the hit
	hit = 0 
	part_particles_create(global.ps,x,y-13,global.p_blood,8)
	instance_create_depth(x,y,0,obj_blood_stain)
}
