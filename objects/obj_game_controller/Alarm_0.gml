/// @description Resource generation
// You can write your code in this editor

if(metal != metal_max)
{
	if (metal + m_gen_rate > metal_max)
	{
		metal = metal_max
	}
	else
	{
		metal += m_gen_rate
	}
}

if(energy != energy_max)
{
	if (energy + e_gen_rate > energy_max)
	{
		energy = energy_max
	}
	else
	{
		energy += e_gen_rate
	}
}
//show_debug_message("Metal: " + string(metal) + "\nEnergy: " + string(energy));
alarm_set(0,game_get_speed(gamespeed_fps));
