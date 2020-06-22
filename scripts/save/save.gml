/// @desc save

var root = ds_list_create();
with(oRoom_rect) {
	var room_map = ds_map_create();	
	ds_map_add(room_map, "x", x);
	ds_map_add(room_map, "y", y);
	ds_map_add(room_map, "desc", description);
	ds_map_add(room_map, "lable", lable);
	ds_map_add(room_map, "id", id2);
	var newList = ds_list_create();
	ds_list_copy(newList, thread);
	ds_map_add_list(room_map, "thread", newList);
	
	ds_list_add(root, room_map);
	ds_list_mark_as_map(root, ds_list_find_index(root, room_map))
}

var wrapper = ds_map_create();
ds_map_add_list(wrapper, "root", root);

var json_string = json_encode(wrapper);
save_json(global.file, json_string)

ds_map_destroy(wrapper);