/// @description Insert description here
// You can write your code in this editor
draw_sprite(hudBG, 0, 45, 43);
draw_sprite(foodIcon, 0, 50, 50);
draw_sprite(medIcon, 0, 50, 105);
draw_sprite(tentIcon, 0, 50, 150);
<<<<<<< Updated upstream
draw_sprite(refugeeIcon, 0, 50, 200);
=======
draw_sprite(refugeeIcon, 0, 50, 200);

//text
draw_set_halign(fa_left);
draw_set_font(MapHudFont);
draw_set_color(c_black);
draw_text_transformed(90, 48, global.foodSups, 1, 1, 0);
draw_text_transformed(90, 98, global.medSups, 1, 1, 0);
draw_text_transformed(90, 150, global.shelterSups, 1, 1, 0);
draw_text_transformed(90, 200, global.totalRefugees, 1, 1, 0);
>>>>>>> Stashed changes
