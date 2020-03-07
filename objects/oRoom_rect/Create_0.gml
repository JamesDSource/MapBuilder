#macro ROOMW 192 
#macro ROOMH 64
lable = "";
description = "";
margin = 5;
editing_description = false;
thread = ds_list_create();
x1 = 0;
y1 = 0;
x2 = 0;
y2 = 0;
id2 = (irandom_range(-5000, 5000) + random(600))/(delta_time * irandom_range(-100, 100));