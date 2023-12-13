/// @description hide/show menu
// You can write your code in this editor

//this needs to be moved somewhere else

if(layer_exists(menu) && layer_get_visible(menu))
{
	layer_set_visible(menu,false)
}
else
{
	layer_set_visible(menu,true)	
}
