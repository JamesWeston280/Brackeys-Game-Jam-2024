/// @description Insert description here
// You can write your code in this editor

handle_health();

if hit = true
{
	shader_set(sFlashHit);
	
	draw_sprite_ext(sprite_index,
	image_index,x,y,image_xscale,
	image_yscale,image_angle,
	c_white,1);
	hit = false;
	shader_reset()
}