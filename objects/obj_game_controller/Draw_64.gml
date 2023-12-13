/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){
	draw_set_alpha(0.8);
	draw_rectangle_color(250,50,450,70,c_gray,c_gray,c_gray,c_gray,false);
	draw_rectangle_color(250,90,450,110,c_gray,c_gray,c_gray,c_gray,false);
	draw_set_alpha(1);
	draw_rectangle_color(253,53,(253 + (192)*(metal/metal_max)),67,c_blue,c_blue,c_blue,c_blue,false);
	draw_rectangle_color(253,93,(253 + (192)*(energy/energy_max)),107,c_yellow,c_yellow,c_yellow,c_yellow,false);
	draw_set_font(Monocraft_8)
	draw_text_color(m_btxt_x,m_btxt_y,m_txt,c_black,c_black,c_black,c_black,1);
	draw_text_color(e_btxt_x,e_btxt_y,e_txt,c_black,c_black,c_black,c_black,1);
	draw_set_font(Monocraft_12);
	draw_text_color(5,25,"Press G \nthen left click\nto spawn \ngun turrets",c_black,c_black,c_black,c_black,1);
	draw_text_color(5,125,burst_str,c_black,c_black,c_black,c_black,1);
	//add money stuff here if I add it in time.

	//pause menu
	if(paused)
	{
		draw_set_color(c_black);
		draw_set_alpha(0.6);
		draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
	
}
}
else if(room == rm_loss){
	draw_set_font(Monocraft_40);
    draw_text_color(100,100,end_string,c_red,c_red,c_red,c_red,1);
}
else if(room == rm_win)
{
	draw_set_font(Monocraft_40);
	draw_text_color(100,100,end_string,c_green,c_green,c_green,c_green,1);
	draw_text_color(100,150, point_string,c_yellow,c_yellow,c_yellow,c_yellow,1);
}
