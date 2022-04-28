/// @description Insert description here
// You can write your code in this editor
var _hover = get_hover();
var _click = _hover && mouse_check_button_pressed(mb_left);

hover = lerp(hover, _hover,0.1);

if (_click&& _script>= 0) {
	script_execute(_script)
}


// checking win/lose condition, could be changed
if _click{
	// no workers
	if (global.workers == 0) {
		room_goto(game_Lose);
	}
	// run out of all resources
	if (global.foodSups == 0 && global.medSups == 0) {
		room_goto(game_Lose);
	}
	//Save all refugees
	if (global.totalRefugees == 0) {
		room_goto(game_Win);
	}
	//test
	//goto_room(game_Win);
	//goto_room(game_Lose);
}
