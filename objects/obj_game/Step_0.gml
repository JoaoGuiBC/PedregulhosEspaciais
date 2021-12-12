if(keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			room_goto(rm_game);
			surface_resize(application_surface, 600, 600);
			window_set_size(600, 600);
			window_set_position(400, 100);
			break;
	}
}