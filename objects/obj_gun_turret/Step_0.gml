/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
burst = obj_game_controller.gun_burst_mod;
//Rotating turret
if(obj_game_controller.en_remain > 0){
	y_offset = dist_near_slime/25+near_slime.sprite_height/2;
	pointdir =  point_direction(x,y,near_slime.x,near_slime.y+y_offset);
	image_angle = pointdir;
	//uncomment if time for it.
	//+= sin(degtorad(pointdir - image_angle))*rspeed;


	if(canfire && dist_near_slime <= (400 + obj_game_controller.gun_range_mod))
	{
		canfire = false
		alarm_set(1,1);
		alarm_set(0,(2+.25*burst-1)*game_get_speed(gamespeed_fps));
	}
}