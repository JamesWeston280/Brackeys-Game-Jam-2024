/// @description wave counter

draw_set_halign(fa_center);
draw_set_font(font_Main);
draw_text_transformed_color(display_get_gui_width()/2, 40,"Wave: " + string(round_counter),2,2,0,c_white,c_white,c_white,c_white,1);

if(game_over)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false)

	draw_set_font(font_Main);

	// Set horizontal alignment to left
	draw_set_halign(fa_center);

	draw_set_color(c_white);

		draw_text_transformed(
	       display_get_gui_width()/2, 
	        (display_get_gui_height()/2),
	       "Skill Issue",
	        5, 5, 0
	    );
}