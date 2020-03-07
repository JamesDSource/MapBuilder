x = mouse_x;
y = mouse_y;

x_ = round(x/32) * 32;
y_ = round(y/32) * 32;

if(mouse_wheel_up()) mode++;
else if(mouse_wheel_down()) mode--;
mode = clamp(mode, 0, MAXMODE);
switch(mode) {
	case MODE.Edit:
		moving = noone;
		if(mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right)) {
			if(global.selected != global.hover_rectange) {
				global.selected = global.hover_rectange;
				if(global.selected != noone && mouse_check_button_released(mb_right)) global.selected.editing_description = true;
			}
			else global.selected = noone;
		}
		break;
	case MODE.Paint:
		moving = noone;
		global.selected = noone;
		if(mouse_check_button_released(mb_left)) instance_create_layer(x_, y_, "Instances", oRoom_rect);
		if(mouse_check_button_released(mb_right) && global.hover_rectange != noone) instance_destroy(global.hover_rectange);
		break;
	case MODE.Thread:
		moving = noone;
		global.selected = noone;
		if(global.hover_rectange != noone) {
			if(mouse_check_button_released(mb_left)) {
				if(threading_with == noone) threading_with = global.hover_rectange;
				else if(threading_with == global.hover_rectange) threading_with = noone;
				else {
					ds_list_add(threading_with.thread, global.hover_rectange.id2);
					threading_with = noone;
				}
			}
			else if(mouse_check_button_released(mb_right)) {
				ds_list_clear(global.hover_rectange.thread);	
			}
		}
		
		break;
	case MODE.Move:
		if(mouse_check_button_released(mb_left)) {
			if(moving == noone && global.hover_rectange != noone) moving = global.hover_rectange;
			else moving = noone;
		}
		
		if(moving != noone) {
			moving.x = x_;
			moving.y = y_;
		}
		break;
}

var is_hovering = noone;
if(instance_exists(oRoom_rect)) {
	with(oRoom_rect) {
		if(rectangle_in_rectangle(x1, y1, x2, y2, other.bbox_left, other.bbox_top, other.bbox_right, other.bbox_bottom)) {
			is_hovering = id;
		}
	}
}
global.hover_rectange = is_hovering;