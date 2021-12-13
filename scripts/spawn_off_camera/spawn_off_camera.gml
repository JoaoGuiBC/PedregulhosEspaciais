function spawn_off_camera(object, numberOfRepetitions){
	var xx, yy;
	var padding = 64;
	
	repeat(numberOfRepetitions) {
		xx = random_range(0, room_width);
		yy = random_range(0, room_height);
	
		while(point_in_rectangle(
			xx, yy, 
			global.cameraX - padding,
			global.cameraY - padding,
			global.cameraX + global.cameraWidth + padding,
			global.cameraY + global.cameraHeight + padding,
		)) {
			if(room != rm_game) exit;
			
			xx = random_range(0, room_width);
			yy = random_range(0, room_height);
		}
	
		instance_create_layer(xx, yy, "Instances", object);
	}
}