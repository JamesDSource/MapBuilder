if(room == Map) {
	switch(global.intent) {
		case "new":
			save();
			break;
		case "load":
			load();
			break;
	}
	global.intent = "";
}