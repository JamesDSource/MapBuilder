switch(mode) {
	case MODE.Paint:
		draw_set_alpha(0.4);
		draw_set_color(c_gray);
		draw_roundrect(x_ - ROOMW/2, y_ - ROOMH/2, x_ + ROOMW/2, y_ + ROOMH/2, false);
		draw_set_alpha(1);
		break;
	case MODE.Thread:
		if(instance_exists(threading_with)) draw_line_color(threading_with.x, threading_with.y, x, y, c_white, c_red);
		break;
}