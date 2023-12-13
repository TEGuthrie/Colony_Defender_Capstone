/// @description Insert description here
// You can write your code in this editor
if(obj_game_controller.en_remain > 0){
	//get closest of each enemy type
	near_slime = instance_nearest(x,y,obj_slime_enemy);
	//var near_spitter = instance_nearest(x,y,obj_spitter_enemy);
	//get the distance to each of them
	dist_near_slime = point_distance(x, y, near_slime.x, near_slime.y);
	//var dist_near_spitter = point_distance(x, y, near_spitter.x, near_spitter.y);


	/*Uncomment this once spitter is implemented.
	if(dist_near_slime > dist_near_spitter)
	{
		near_enemy = near_slime;
	}
	else
	{
		near_enemy = near_spitter	
	}
	*/
}