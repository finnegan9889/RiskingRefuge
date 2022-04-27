/// @description generic sensing, and animation code for a patrolling soldier

if(global.pause) exit;

// movement loop, analyzes movement relative to player when detected
// when patrolling, child object specifies nature of movement and sprite relationship

// Calculate Movement
playerDir = point_direction(x,y, obj_Player_1.x, obj_Player_1.y);
playerDist = point_distance(x,y, obj_Player_1.x, obj_Player_1.y);

// compare prev and curr x positions to determine horiz direction
if (direction > 270  && direction <= 90) {
	dir = 1;
}
else {
	dir = 0;
}

// Detect Player (Inherit me in child obj and break them from a path if they're in one)
if (!detectedPlayer && playerDist <= detectDistanceMin) {
		detectedPlayer = true;
		beginSearch = true;
}
else if (!detectedPlayer && playerDist <= detectDistanceMax) {
	if (dir == 0 && (playerDir <= 225 && playerDir >= 135)) {//90 degrees vision forward
		detectedPlayer = true;
		beginSearch = true;
	}
	if (dir == 1 && (playerDir <= 45 && playerDir >= 315)) {
		detectedPlayer = true;
		beginSearch = true;
	}
}

// Move to player when detected, shoot when can //FIXME
if (detectedPlayer) {
	if (playerDist <= 2*detectDistanceMax && ((playerDir <= 195 && playerDir >= 165) ||  (playerDir <= 15 && playerDir >= 345))) {
		//shoot left || shoot right
		shooting = true;
	} else if (!shooting) {
		//move to player
		if (playerDir < 90 && playerDir >= 270 ) { moveLeft = 0; moveRight = 1; }//right
		if (playerDir >= 90 && playerDir < 270 ) { moveLeft = 1; moveRight = 0; }//left
		if (playerDir >= 0 && playerDir < 180 ) { moveUp = 1; moveDown = 0; }//up
		if (playerDir >= 180 ) { moveUp = 0; moveDown = 1; }//down
		//new movement calc
		/*
		vx = ((moveRight - moveLeft) * walkSpeed);
		vy = ((moveDown - moveUp) * walkSpeed);
		x += vx;
		y += vy;
		*/
	}

}

//Shooting
if (shooting && shootTimer > 0) {
			walkSpeed = 0;
			shootTimer -= 1/room_speed;
		}
		else {
			shooting = false;
			shootTimer = 2;
			walkSpeed = 1;
		}

// Idle
if(!beginSearch && /*x-xprevious == 0 && y-yprevious == 0*/ vx == 0 && vy == 0){
	if (!detectedPlayer) {
		switch dir{
			case 1: sprite_index = sprSoldierRightIdle; break;
			case 0: sprite_index = sprSoldierLeftIdle; break;
		}
	}
	else if (detectedPlayer && shooting) {
		switch dir{
			case 1: sprite_index = sprSoldierRightShoot; break;
			case 0: sprite_index = sprSoldierLeftShoot; break;
		}
	}
}

// Begin Search Anim
if (beginSearch) {
	if (detectTimer > 0) {
		walkSpeed = 0;
		sprite_index = sprSoldierSearch;
		detectTimer -= 1/room_speed;
	}
	else {
		beginSearch = false;
		detectedPlayer = true;
		walkSpeed = 1;
	}
}

// Moving
if(!beginSearch && /*(x-xprevious != 0 || y-yprevious != 0)*/ (vx != 0 || vy != 0)){
	// Change Sprite
	//if (vx > 0){
	if (dir == 1){
		//March vs Run depending on if player was detected
		if (!detectedPlayer) {
			sprite_index = sprSoldierRightMarch;
		}
		else {
			sprite_index = sprSoldierRightRun;
		}
	}
	
	//if (vx < 0){
	if (dir == 0){
		if (!detectedPlayer) {
			sprite_index = sprSoldierLeftMarch;
		}
		else {
			sprite_index = sprSoldierLeftRun;
		}
	}
}
	

vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);
if (!onPath) {
x += vx;
y += vy;
}
//TODO code sensing mechanic to detect player in front of soldier object
