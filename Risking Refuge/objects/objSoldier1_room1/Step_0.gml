/// @description same function but 
event_inherited();

// compare prev and curr x positions to determine horiz direction
if ((direction > 270  && direction <= 360) || (direction <= 90 && direction >= 0)) {
	moveRight = 1;
	moveLeft = 0;
}
else {
	moveRight = 0;
	moveLeft = 1;
}
