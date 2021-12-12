cameraX = 0;
cameraY = 0;
target = obj_ship;

switch(room) {
	case rm_start:
	case rm_win:
	case rm_gameover:
		cameraWidth = 600;
		cameraHeight = 400;
		break;

	case rm_game:
		cameraWidth = 600;
		cameraHeight = 600;
		break;
}


view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);

displayScale = 1;
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

display_set_gui_size(cameraWidth, cameraHeight);

alarm[0] = 1;