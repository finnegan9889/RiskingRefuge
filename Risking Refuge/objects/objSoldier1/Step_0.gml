/// @description same function but 
event_inherited();

// compare prev and curr x positions to determine horiz direction
if (phy_position_xprevious <= phy_position_x) {
	moveRight = 1;
	moveLeft = 0;
}
else {
	moveRight = 0;
	moveLeft = 1;
}
