draw_self()

draw_sprite(sHealth_bg22, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(sHealth, 0, healthbar_x, healthbar_y,min((hp/max_hp) * healthbar_width, healthbar_width), healthbar_height);
draw_sprite(sHealth_bg,0, healthbar_x, healthbar_y);