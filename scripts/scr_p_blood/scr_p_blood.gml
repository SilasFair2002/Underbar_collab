// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_blood(){
	global.p_blood = part_type_create()
	var  p = global.p_blood //to save space
	part_type_sprite(p,spr_blood_particles,false,false,true)
	part_type_direction(p, 0,180,0,10)
	part_type_speed(p,0.1,1,-0.01,0.1)
	part_type_gravity(p,0.1,270)
	part_type_life(p,15,25)
	
	p2 = part_type_create()
	part_type_death(p, 1, p2)
	part_type_sprite(p2,spr_blood_particles,false,false,true)
	part_type_life(p2,500,2000)
	part_type_alpha2(p2, 1, 0.1)











}