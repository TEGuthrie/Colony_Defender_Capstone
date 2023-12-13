/// @description Insert description here
// You can write your code in this editor

//placeable = position_empty(mouse_x, mouse_y);

m_txt = "Metal: " + string(metal);
e_txt = "Energy: " + string(energy);
if ((wave % 3) == 0)
{
	en_health_mod += 0.25;
}

if(burst_cost != (10+(gun_burst_mod-1)*5))
{
	burst_cost = 10+(gun_burst_mod-1)*5
	burst_str = "Burst fire \nupgrade costs:\n" + string(burst_cost) + " energy"
}

//Win detection
if(wave > win_wave && not_won)
{
	not_won = false;
	end_string = "You won!";
	point_string = point_string + string(points);
	room_goto(rm_win);
}
//Wave end and next wave start
if(en_spawn_start && en_remain	== 0 && room = rm_game)
{
	//show_debug_message("Restarting spawn alarm");
	wave += 1;
	show_debug_message("Wave: "+ string(wave));
    alarm_set(1, spawn_timer * game_get_speed(gamespeed_fps));
	en_spawn_start = false;
	w_health = phealth;
}
//Loss detection
if(g_start && phealth <= 0)
{
	g_start = false;
	end_string = "You lost on wave " + string(wave);
	room_goto(rm_loss);
}

