if(instance_exists(target)) {
	global.cameraX = target.x - (global.cameraWidth / 2);
	global.cameraY = target.y - (global.cameraHeight / 2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

layer_x("Parallax_0", global.cameraX * 0.95);
layer_y("Parallax_0", global.cameraY * 0.95);

layer_x("Parallax_1", global.cameraX * 0.9);
layer_y("Parallax_1", global.cameraY * 0.9);

layer_x("Parallax_2", global.cameraX * 0.85);
layer_y("Parallax_2", global.cameraY * 0.85);

layer_x("Gradient", global.cameraX * 0.80);
layer_y("Gradient", global.cameraY * 0.80);