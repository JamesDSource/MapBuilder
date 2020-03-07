with(oRoom_rect) instance_destroy();

if(file_exists(global.file)) {
	
	var file = file_text_open_read(global.file)
	var wrapper = file_text_read_string(file)
	wrapper = json_decode(wrapper);
	file_text_close(file);
	
	var root = wrapper[? "root"];
	
	for(var i = 0; i < ds_list_size(root); i++) {
		var rm = root[| i];
		with(instance_create_layer(rm[? "x"], rm[? "y"], "Instances", oRoom_rect)) {
			lable = rm[? "lable"];
			description = rm[? "desc"];
			id2 = rm[? "id"];
			ds_list_copy(thread, rm[? "thread"]);
			
		}
		
	}
	
	ds_map_destroy(wrapper);
}