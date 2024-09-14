draw_self()

draw_sprite(sHealth_bg22, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(sHealth, 0, healthbar_x, healthbar_y,min((hp/max_hp) * healthbar_width, healthbar_width), healthbar_height);
draw_sprite(sHealth_bg,0, healthbar_x, healthbar_y);

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