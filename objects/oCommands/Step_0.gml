if(keyboard_check(vk_control)) {
	if(keyboard_check_pressed(ord("S"))) {
		global.file = get_save_filename(FILTER, global.file);
		save();
	}
	if(keyboard_check_pressed(ord("L"))) load();
	
}

if(keyboard_check_released(vk_escape)) room_goto(Menu);