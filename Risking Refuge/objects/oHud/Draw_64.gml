/// @description Insert description here
// You can write your code in this editor
draw_sprite(hudBG, 0, 45, 43);

draw_sprite(foodIcon, 0, 52, 50);
draw_sprite(medIcon, 0, 50, 105);
draw_sprite(tentIcon, 0, 50, 150);

draw_line_width(48, 193, 180, 193, 2);

draw_sprite(refugeeIcon, 0, 50, 200);
draw_sprite(livesIcon, 0, 52, 245);

//text
draw_set_halign(fa_left);
draw_set_font(MapHudFont);
draw_set_color(c_black);
draw_text_transformed(90, 48, global.foodSups, 1, 1, 0);
draw_text_transformed(90, 98, global.medSups, 1, 1, 0);
draw_text_transformed(90, 150, global.shelterSups, 1, 1, 0);
draw_text_transformed(90, 200, global.totalRefugees, 1, 1, 0);

draw_set_font(MapHudSmall);
draw_text_transformed(90, 254, "x", 1, 1, 0);
draw_set_font(MapHudFont);
draw_text_transformed(108, 248, string(global.workers), 1, 1, 0);
