//@description instrucitons
draw_self();

if(state == 1){ //show info window
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(MapHudSmall);
	draw_set_color(c_black);
	draw_sprite(instructionBG, 0, window_get_width()/2 - 255, window_get_height()/2 - 240);
	draw_text_ext(window_get_width()/2 - 225, window_get_height()/2 - 180, infoStr, 35, 480);
	
	//create close button
	//instance_create_depth(window_get_width()/2 + 210, window_get_height()/2 - 230, -1, actionCloseButton);
}else{ //hide info window
	instance_deactivate_object(closeButton);
}


