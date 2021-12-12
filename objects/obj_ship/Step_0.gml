if(keyboard_check(vk_left)) {
	image_angle += 5;
}


if(keyboard_check(vk_right)) {
	image_angle -= 5;
}

if(keyboard_check(vk_up)) {
	motion_add(image_angle, 0.1);
}


if(keyboard_check_pressed(vk_space)) {
	if(shootingGun == "right") {
		var bulletInstance = instance_create_layer(x + 7, y + 7, "Instances", obj_bullet);
		
		shootingGun = "left";
	} else {
		var bulletInstance = instance_create_layer(x - 7, y - 7, "Instances", obj_bullet);
		
		shootingGun = "right";
	}
	
	bulletInstance.direction = image_angle;
	
	audio_play_sound(snd_shot, 1, false);
}

move_wrap(true, true, sprite_height/2);

if (alarm[0] < 0) {
	if(global.isShipInvincible) {
		alarm[0] = room_speed * 2;	
	}
}