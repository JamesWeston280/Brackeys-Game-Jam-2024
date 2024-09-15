/// @description Insert description here
// You can write your code in this editor

if(browser_width != bw || browser_height != bh)
{
	bw = browser_width;
	bh = browser_height;
	
	window_set_size(bw,bh);
	window_center();
	
	var base_width = 1920; // The base width you want to scale relative to
	var base_height = 1080; // The base height you want to scale relative to

	var camera_width = camera_get_view_width(view_camera[0]);
	var camera_height = camera_get_view_height(view_camera[0]);

	// Calculate scaling factors based on the camera size compared to the base resolution
	var scale_x = camera_width / base_width;
	var scale_y = camera_height / base_height;

	// Set the GUI size, but multiply by the scaling factor
	display_set_gui_size(base_width * scale_x, base_height * scale_y);

}