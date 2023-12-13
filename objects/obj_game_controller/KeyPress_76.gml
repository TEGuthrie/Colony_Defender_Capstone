/// @description Insert description here
// You can write your code in this editor

var l_cur_cost = laser_cost + laser_count * laser_cost_mod;

draw_rectangle_color(215,850,1704,1179,c_grey,c_grey,c_grey,c_grey,true);
//draw

if (metal > l_cur_cost && placeable && mouse_y >= 850) {
    instance_create_layer(mouse_x,mouse_y, "Instances", obj_gun_turret);
	metal -= cur_cost;
	gun_count++;
}
