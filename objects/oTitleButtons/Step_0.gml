// Step Event

// Navigate options with Up and Down arrow keys
if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) {
    selected_option -= 1;
    if (selected_option < 0) {
        selected_option = array_length(options) - 1;
    }
} else if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))) {
    selected_option += 1;
    if (selected_option >= array_length(options)) {
        selected_option = 0;
    }
}

// Confirm selection with Enter or Space
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
    switch (selected_option) {
        case 0: // "Start Game"
            // Code to start the game goes here
            room_goto(Room1); // Change to your game room
            break;

			
		case 1: // "Quit Game"
            game_end(); // Quit the game
            break;
    }
}


//if (keyboard_check_pressed(vk_tab))
//{
//window_set_size(window_get_width(),window_get_height());


//if (window_get_fullscreen() == true)
//{
//	window_set_fullscreen(false);
//}
//else
//{
//	window_set_fullscreen(true);
//}
//}