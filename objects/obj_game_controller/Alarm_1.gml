/// @description Enemy spawn
// You can write your code in this editor
if(room == rm_game){
	randomize();
	var spawn = wave * 5; //Number of enemies to spawn
	//show_debug_message("Spawning " + string(spawn) + " slimes");
	var spawned = 0;
	var sx;
	var sy;
	//spawn region definition
	var sx_min = 244; 
	var sx_max = 1675;
	var sy_min = 24; 
	var sy_max = 176;

	for (var i = 0; i <= spawn; i++){
	    while (spawned != i) {
		    sx = irandom_range(sx_min,sx_max);
			sy = irandom_range(sy_min,sy_max);
		    //spawns enemy if new location doesn't 
			//intersect an already spawned enemy
			if(place_empty(sx,sy,obj_slime_enemy))
			{
				instance_create_layer(sx,sy,"Instances",obj_slime_enemy);			
				spawned++;
			}
			else
			{
				show_debug_message("Intersected another enemy, trying again");
			}
		}
	}
	en_remain = spawned;  //sets enemy counter
	en_spawn_start = true;
}