//Start and set necessary values in the game controler
obj_game_controller.alarm[0] = 1* game_get_speed(gamespeed_fps);
//change this to a switch based on level_def once more levels are built.
obj_game_controller.phealth = 10; //sets base health
obj_game_controller.w_health = obj_game_controller.phealth;
obj_game_controller.g_start = true;
obj_game_controller.wave = 1;
//this should start the spawn timer.
obj_game_controller.alarm[1] = obj_game_controller.spawn_timer * game_get_speed(gamespeed_fps);
obj_game_controller.en_spawn_start = false;
show_debug_message("started spawner alarm")

//change background based on selected room
var l_id = layer_get_id("Background");
var b_id = layer_background_get_id(l_id);
switch (obj_game_controller.level_def) {
    case 1:
        layer_background_sprite(b_id, desert_game_background);
        break;
    default:
        show_message("Sorry game setup failed try a different one");
		room_goto(rm_setup)
        break;
}
instance_deactivate_layer("menu");