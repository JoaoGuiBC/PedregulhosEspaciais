instance_destroy();

with(other) {
	instance_destroy();
	
	if(sprite_index == spr_rock_large) {
		repeat(2) {
			var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			newAsteroid.sprite_index = spr_rock_medium;
		}
	} else if(sprite_index == spr_rock_medium) {
		repeat(2) {
			var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			newAsteroid.sprite_index = spr_rock_small;
		}
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}