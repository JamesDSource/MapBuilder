var save_file = get_open_filename(FILTER, "map");
if(save_file != "") {
	global.file = save_file;
	global.intent = "load";
	room_goto(Map);	
}