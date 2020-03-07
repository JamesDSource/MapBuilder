var save_file = get_save_filename(FILTER, "newMap");
if(save_file != "") {
	global.file = save_file;
	global.intent = "new";
	room_goto(Map);
}