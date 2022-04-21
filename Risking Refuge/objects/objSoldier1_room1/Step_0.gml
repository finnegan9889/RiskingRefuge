/// @description Ends path when detection of player

// Inherit the parent event
event_inherited();

//If player sensed, pause path
// if (sensing condition) { path_speed = 0; }

if (detectedPlayer) {
	path_end();
	onPath = false;
	//Parent create function should specify tracking and attacking behaviors
}

