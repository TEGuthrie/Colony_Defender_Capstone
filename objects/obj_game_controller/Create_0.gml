/// @description Insert description here
// You can write your code in this editor

en_health_mod = 1;
end_string = "";
point_string = "Your score: ";
metal_x = 0;
energy_x = 0;
//Change these before submission!!!!
spawn_timer = 5;	//time between end of wave and next wave
win_wave = 5;		//Waves until you've won
//
not_won = true;
//variables for material quantities in ui
m_b_xmin = 250;
m_b_xmax = 450;
m_btxt_x = m_b_xmax - m_b_xmin/2 - 20;
m_btxt_y = 54;
e_b_xmin = 250;
e_b_xmax = 450;
e_btxt_x = e_b_xmax - e_b_xmin/2 - 20;
e_btxt_y = 94;
m_txt = "";
e_txt = "";
//variables used when pausing alarms
t0_pause = 0;
t1_pause = 0;
//
burst_cost = 10;
burst_cost_mod = 0;
burst_str = "Press B \nBurst fire \nupgrade costs:\n" + string(burst_cost) + " energy"