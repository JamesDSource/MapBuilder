enum MODE {
	Paint,	
	Edit,
	Thread,
	Move
}
#macro MAXMODE 3
mode_str[MODE.Paint] = "Paint";
mode_str[MODE.Edit] = "Edit";
mode_str[MODE.Thread] = "Thread";
mode_str[MODE.Move] = "Move";
x_ = x;
y_ = y;
global.hover_rectange = noone;
global.selected = noone;
mode = MODE.Paint;
threading_with = noone;
moving = noone;