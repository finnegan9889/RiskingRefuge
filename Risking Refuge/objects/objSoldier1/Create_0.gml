// @description path script ran upon beginning of level, overrides parent function
event_inherited();
/*
if (!detectedPlayer) {
	instance1 = instance_create_depth(x, y, depth+1, objSoldier1);
	with (instance1) {
		path_start(pSoldierPatrol1, 8, path_action_continue, false);
	}
}
*/

path_start(pSoldierPatrol1, 1, path_action_continue, false);

//If player sensed, pause path
// if (sensing condition) { path_speed = 0; }

if (detectedPlayer) {
	path_end();
	//Parent create function should specify tracking and attacking behaviors
}
