/// @description Player Movement

// Check keys for movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

// Calculate Movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// Idle
if(vx == 0 && vy == 0){
	switch dir{
		case 0: sprite_index = sprRightIdle; break;
		case 1: sprite_index = sprUpIdle; break;
		case 2: sprite_index = sprLeftIdle; break;
		case 3: sprite_index = sprDownIdle; break;
	}
}

// Moving
if(vx != 0 || vy != 0){
	if !collision_point(x+vx, y, obj_par_environment, true, true){
		x += vx;
	}
	if !collision_point(x, y+vy, obj_par_environment, true, true){
		y += vy;
	}
	
	// Change Sprite
	if(vx > 0){
		sprite_index = sprWalkRight;
		dir = 0;
	}
	if(vx < 0){
		sprite_index = sprWalkLeft;
		dir = 2;
	}
	if(vy > 0){
		sprite_index = sprWalkDown;
		dir = 3;
	}
	if(vy < 0){
		sprite_index = sprWalkUp;
		dir = 1;
	}	
}
