/// @description wave counter

draw_set_halign(fa_center);
draw_set_font(font_Main);
draw_text_transformed_color(display_get_gui_width()/2, 40,"Wave: " + string(round_counter),2,2,0,c_white,c_white,c_white,c_white,1);