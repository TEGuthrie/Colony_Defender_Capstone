/// @description Insert description here
// You can write your code in this editor
var cost = obj_game_controller.gun_cost;
var count = obj_game_controller.gun_count;
var cost_mod = obj_game_controller.gun_cost_mod;

var g_cur_cost = cost + count * cost_mod;
instance_create_layer(x,y,"Instances",obj_gun_turret);
obj_game_controller.metal -= g_cur_cost;
instance_destroy();

