if(instance_exists(oRoom_rect)) {
	with(oRoom_rect) {
		for(var i = 0; i < ds_list_size(thread); i++) {
			var this_thread = thread[| i];
			with(oRoom_rect) if(id2 == this_thread) this_thread = id;
			if(instance_exists(this_thread)) draw_line_color(x, y, this_thread.x, this_thread.y, c_white, c_red);
		}
	}
}