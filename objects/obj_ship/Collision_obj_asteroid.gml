if(!global.isShipInvincible) {
	lives -= 1;
	
	if (lives > 0) {
		global.isShipInvincible = true;
		instance_create_layer(room_width/2,room_height/2,"Instances",obj_ship);
	}

	audio_play_sound(snd_death, 1, false);
	instance_destroy();

	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}