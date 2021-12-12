if(keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			room_goto(rm_game);
			surface_resize(application_surface, 600, 600);
			window_set_size(600, 600);
			window_set_position(400, 100);
			break;
		
		case rm_gameover:
		case rm_win:
			surface_resize(application_surface, 800, 400);
			window_set_size(800, 400);
			game_restart();
			break;
	}
}

if(room == rm_game) {
	if(score >= 1000) {
		room_goto(rm_win);
		surface_resize(application_surface, 600, 400);
		window_set_size(600, 400);
	}

	if(lives <= 0) {
		room_goto(rm_gameover);
		surface_resize(application_surface, 600, 400);
		window_set_size(600, 400);
	}
}