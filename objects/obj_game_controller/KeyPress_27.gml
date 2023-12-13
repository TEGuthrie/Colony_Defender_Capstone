/// @description pause menu
// You can write your code in this editor

if(room == rm_game){
	if(!paused)
	{
		paused = true;
		instance_deactivate_all(true);
		instance_activate_layer("menu");
		t0_pause = alarm[0];
		alarm[0] = -1;
		t1_pause = alarm[1];
		alarm[1] = -1;
	}
	else
	{
		paused = false;
		instance_activate_all();
		instance_deactivate_layer("menu");
		alarm[0] = t0_pause;
		alarm[1] = t1_pause;
}
}