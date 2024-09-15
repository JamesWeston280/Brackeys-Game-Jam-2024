
// Clear the screen
//draw_clear(c_black);


// Draw the title
draw_set_font(font_Main); // Set your font for the title
draw_set_halign(fa_center);
//draw_set_color(make_color_rgb(39,178,157));
draw_set_color(c_yellow)
font_scale = 4;
//draw_text_transformed(room_width / 2, room_height / 4, "Gnome Alone",font_scale,font_scale,0);


draw_set_font(font_Main);
// Draw the options below the title
for (var i = 0; i < array_length(options); i++) {
    if (i == selected_option) {
        draw_set_color(c_yellow); // Highlight the selected option
		font_scale = 3;
    } else {
        draw_set_color(c_white);
		font_scale = 2.5;
    }
    draw_text_transformed(room_width -250, (room_height /2 + i * 120) - 100, options[i],font_scale,font_scale,0);
}
		