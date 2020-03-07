camera_set_view_pos(camera, x, y);

if(mouse_check_button(mb_middle)) {
	if(last_mouse_x != mouse_x || last_mouse_y != mouse_y) {
		var dist = point_distance(last_mouse_x, last_mouse_y, mouse_x, mouse_y);
		var angle = point_direction(mouse_x, mouse_y, last_mouse_x, last_mouse_y);
		xT += lengthdir_x(dist, angle);
		yT += lengthdir_y(dist, angle);
		last_mouse_x = mouse_x;
		last_mouse_y = mouse_y;
	}
	
}
else {
	last_mouse_x = mouse_x;
	last_mouse_y = mouse_y;
}

x += (xT - x)/10;
y += (yT - y)/10;

if(keyboard_check_pressed(ord("R"))) {
	xT = xstart;
	yT = ystart;
}