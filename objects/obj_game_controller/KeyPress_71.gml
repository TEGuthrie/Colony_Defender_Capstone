/// @description create turret
// You can write your code in this editor

var g_cur_cost = gun_cost + gun_count * gun_cost_mod;

//draw_rectangle_color(215,850,1704,1179,c_grey,c_grey,c_grey,c_grey,true);
//draw

if (metal > g_cur_cost) {
	//make a dragable instance instead of just the gun turret
    instance_create_layer(mouse_x,mouse_y, "Instances", obj_gun_deploy);
}