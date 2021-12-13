if(room == rm_game) {
	audio_play_sound(msc_song, 2, true);
	
	spawn_off_camera(obj_asteroid, 40);
	
	alarm[0] = 60;
}
