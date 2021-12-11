//check when left key is being pressed and then rotate the image to the left
if(keyboard_check(vk_left)){
	image_angle += 5;
}

//check when right key is being pressed and then rotate the image to the right
if(keyboard_check(vk_right)){
	image_angle -= 5;
}

//check when up key is being pressed and then add speed to the ship in the direction it's facing
if(keyboard_check(vk_up)){
	motion_add(image_angle, 0.1);
}

//check every time space key is pressed and then creates a new bullet
if(keyboard_check_pressed(vk_space)){
	//creates the bullet at the ship's location in the instances layer and then saves the instance to a variable
	var bulletInstance = instance_create_layer(x, y, "Instances", obj_bullet);
	
	//sets the bullet direction to match the direction the ship is facing
	bulletInstance.direction = image_angle;
}

//when the object leaves the screen, on both the x and y axis, it is moved to the opposite side
move_wrap(true, true, sprite_height/2);