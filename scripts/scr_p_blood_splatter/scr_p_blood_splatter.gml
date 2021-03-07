// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_blood_splatter(){
	part_system_depth(global.ps, obj_player.depth)
	global.p_blood_splatter = part_type_create()
	var  p = global.p_blood_splatter //to save space
	part_type_sprite(p,spr_blood_particles,false,false,true)
	part_type_direction(p, global.blood_dir-45,global.blood_dir+45,0,10)
	part_type_speed(p,1.6,3.6,-0.01,0.1)
	part_type_gravity(p,0.1,270)
	part_type_life(p,4,20)
	
	part_system_depth(global.ps, 0)
	

	
	p2 = part_type_create()
	part_type_step(p,1,p2)
	part_type_death(p, 1, p2)
	part_type_sprite(p2,spr_blood_particles,false,false,true)
	part_type_life(p2,200,5000)
	part_type_alpha2(p2, 0.5, 0.1)
	part_type_size(p2,0.6,1.5,0,0)











}