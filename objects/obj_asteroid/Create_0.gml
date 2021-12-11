//set random seeds for the randon events
randomize();

//randomly choose a sprite for the asteroid
sprite_index = choose(
	spr_rock_small,
	spr_rock_medium,
	spr_rock_large
);

//randomly set asteroid direction and image angle rotation
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

//asteroid moves forward at a constant speed of 1
speed = 1;