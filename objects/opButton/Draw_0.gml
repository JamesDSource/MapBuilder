draw_self();
if(selected) {
	draw_set_alpha(0.5);
	draw_set_color(c_yellow);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	draw_set_alpha(1);
}

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, lable);