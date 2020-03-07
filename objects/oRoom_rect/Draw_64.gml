if(editing_description) {
	draw_set_font(fText);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	var box_margin = 15;
	var desc = "Description";
	var largest_width = string_width(desc) *2;
	if(string_width(description) > largest_width) largest_width = string_width(description);
	draw_set_color(c_black);
	draw_rectangle(display_get_gui_width()/2 - largest_width/2, box_margin, display_get_gui_width()/2 + largest_width/2, display_get_gui_height() - box_margin, false);
	
	draw_set_color(c_white);
	draw_text_transformed(display_get_gui_width()/2, box_margin, desc, 2, 2, 0);
	draw_text(display_get_gui_width()/2, box_margin +  string_height(desc)*2, description);	
}