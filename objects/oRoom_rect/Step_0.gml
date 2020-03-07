x1 = x - ROOMW/2;
y1 = y - ROOMH/2;
x2 = x + ROOMW/2;
y2 = y + ROOMH/2;

if(global.selected == id) {
	draw_set_font(fText);
	if(editing_description) {
		if(keyboard_check_pressed(vk_backspace)) description = string_copy(description, 1, string_length(description)-1);
		else if(keyboard_check_pressed(vk_enter)) description += "\n";
		else if(keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_shift)) {
			if(keyboard_lastchar != "") description += keyboard_lastchar;
			keyboard_lastchar = "";
		}
	}
	else {
		if(keyboard_check_pressed(vk_backspace) || string_width(lable) >= ROOMW - margin) lable = string_copy(lable, 1, string_length(lable)-1);
		else if(keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_shift)) {
			if(keyboard_lastchar != "") lable += keyboard_lastchar;
			keyboard_lastchar = "";
		}
	}
}
else editing_description = false;