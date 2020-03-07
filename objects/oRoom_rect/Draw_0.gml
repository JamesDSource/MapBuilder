draw_set_color(c_gray);
if(global.hover_rectange == id) draw_set_color(c_yellow);
draw_roundrect(x1, y1, x2, y2, false);
for(var i = 0; i < margin-1; i++) {
	draw_set_color(c_dkgray);
	if(global.selected == id) draw_set_color(c_red);
	draw_roundrect(x1+i, y1+i, x2-i, y2-i, true);
}
draw_set_color(c_white);
if(global.hover_rectange == id) draw_set_color(c_red);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(fText);
draw_text(x - ROOMW/2 + margin, y, lable);