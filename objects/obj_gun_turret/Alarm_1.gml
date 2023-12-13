/// @description fire burst
// You can write your code in this editor

if(c_burst < burst)
{
	c_burst++;
	with(instance_create_layer(x,y,"Instances",obj_bullet))
		{
			image_angle = other.pointdir;
			direction = other.pointdir;
			speed = 25;
		}
		alarm_set(1,.25*game_get_speed(gamespeed_fps));
}
else
{
	//alarm_set(0,2 * game_get_speed(gamespeed_fps));
}
