/// @description generic sensing, and animation code for a patrolling soldier

// movement loop, analyzes movement relative to player when detected
// when patrolling, child object specifies nature of movement and sprite relationship

// Calculate Movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// Idle
if(vx == 0 && vy == 0){
	if (!detectedPlayer) {
		switch dir{
			case 0: sprite_index = sprSoldierRightIdle; break;
			case 1: sprite_index = sprSoldierLeftIdle; break;
		}
	}
	else if (detectedPlayer && !shooting) {
		sprite_index = sprSoldierSearch;
	}
	else if (detectedPlayer && shooting) {
		switch dir{
			case 0: sprite_index = sprSoldierLeftShoot; break;
			case 1: sprite_index = sprSoldierRightShoot; break;
		}
	}
}

// Moving
if(vx != 0 || vy != 0){
	x += vx;
	y += vy;
	
	// Change Sprite
	
	//if (vx > 0){
	if (moveRight == 1){
		//March vs Run depending on if player was detected
		if (!detectedPlayer && !shooting) {
			sprite_index = sprSoldierRightMarch;
			walkSpeed = 2;
		}
		else {
			sprite_index = sprSoldierRightRun;
			walkSpeed = 4;
		}
		dir = 0;
	}
	
	//if (vx < 0){
	if (moveLeft == 1){
		if (!detectedPlayer && !shooting) {
			sprite_index = sprSoldierLeftMarch;
			walkSpeed = 2;
		}
		else {
			sprite_index = sprSoldierLeftRun;
			walkSpeed = 4;
		}
		dir = 1;
	}
}


//TODO code sensing mechanic to detect player in front of soldier object