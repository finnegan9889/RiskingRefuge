/// @description Insert description here
// You can write your code in this editor

infoStr = "- You can find your current resources in the top-left window.\n- Click on one of your facilities to decide where to allocate these resources. Once opened, click the green plus button to finalize the allocation.\n- Do your best to ensure that the refugees get the food and medicine that they need while using your building supplies to construct new facilities."

sprite_index = infoSprite;
draw_sprite(infoSprite, 0, room_width - 64, 6);
//draw_self();
if(self.state == 1){ //show info window	
	Facility.state = 0; //close facility popup if open
	
	draw_set_halign(fa_left);
	draw_set_font(MapHudSmall);
	draw_set_color(c_black);
	draw_sprite(instructionBG, 0, room_width/2 - 255, room_height/2 - 240);
	draw_text_ext(room_width/2 - 220, room_height/2 - 200, infoStr, 35, 480);
	
	//create close button
	instance_create_depth(room_width/2 + 210, room_height/2 - 230, -1, closeButton);
}else{ //hide info window
	instance_deactivate_object(closeButton);
}
