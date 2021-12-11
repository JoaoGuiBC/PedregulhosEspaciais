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

//when the object leaves the screen, on both the x and y axis, it is moved to the opposite side
move_wrap(true, true, sprite_height/2);