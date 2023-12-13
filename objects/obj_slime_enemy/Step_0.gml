/// @description Insert description here
// You can write your code in this editor

if(ehealth <= 0)
{
	obj_game_controller.en_remain -= 1;
	obj_game_controller.points += 100;
	instance_create_layer(x,y,"Instances",obj_slime_dead);
	instance_destroy();
}
