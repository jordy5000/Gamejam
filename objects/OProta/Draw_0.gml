/// @description Insérez la description ici

draw_self(); 
var bar_width = 100;
var bar_height = 10;
var health_ratio = health / max_health;
draw_set_color(c_green);
draw_rectangle(x - bar_width/2, y - 40, x - bar_width/2 + bar_width * health_ratio, y - 40 + bar_height, false);
draw_set_color(c_black);
draw_rectangle(x - bar_width/2, y - 40, x - bar_width/2 + bar_width, y - 40 + bar_height, true);


