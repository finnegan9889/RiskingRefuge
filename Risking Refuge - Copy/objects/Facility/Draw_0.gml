/// @description Draw info
draw_self();

if(state == 1){  //show resource info
	draw_sprite(hudBGWide, 0, self.x + 64, self.y - 40);
	draw_sprite(foodIcon, 0, self.x + 68, self.y - 36);
	draw_sprite(medIcon, 0, self.x + 68, self.y + 4);
	draw_sprite(tentIcon, 0, self.x + 68, self.y + 40);
	draw_sprite(refugeeIcon, 0, self.x + 67, self.y + 78);

	draw_set_halign(fa_left);
	draw_set_font(MapHudSmall);
	draw_set_color(c_black);
	draw_text_transformed(self.x + 102, self.y - 36, string(ResourceTracker.food) + "/" +
		string(foodReq),1, 1, 0);
	draw_text_transformed(self.x + 102, self.y, string(ResourceTracker.meds) + "/" +
		string(medsReq), 1, 1, 0);
	draw_text_transformed(self.x + 102, self.y + 40, string(ResourceTracker.shelterSups) + "/" + 
		string(shelterReq), 1, 1, 0);
	draw_text_transformed(self.x + 102, self.y + 80, string(refugeeCount) + "/" +
		string(capacity), 1, 1, 0);
		
	//Allocation Controls
	draw_sprite(hudBGThin, 0, self.x - 42, self.y - 40);
	if(!instance_exists(foodButton)){
		instance_create_depth(self.x - 38, self.y - 36, -1, foodButton);
		instance_create_depth(self.x - 38, self.y + 4, -1, medsButton);
		instance_create_depth(self.x - 38, self.y + 44, -1, supsButton);
		instance_create_depth(self.x - 38, self.y + 84, -1, refugeeButton);
	}
	
}else{ //hide info
	if(instance_exists(foodButton)){
		instance_deactivate_object(foodButton);	
		instance_deactivate_object(medsButton);	
		instance_deactivate_object(supsButton);	
		instance_deactivate_object(refugeeButton);	
	}
}

function deactivate_button(button){
		if(instance_exists(button)){
				instance_deactivate_object(button);
		}
}