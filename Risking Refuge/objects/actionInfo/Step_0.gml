/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		//update state
		if(state == 0){
			global.pause = 1;
			state = 1;
		}else{
			global.pause = 0;
			state = 0;
		}
	}
}
