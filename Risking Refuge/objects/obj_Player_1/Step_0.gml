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
		case 0: sprite_index = spr_player_idle_right_strip04; break;
		case 1: sprite_index = spr_player_idle_up_strip04; break;
		case 2: sprite_index = spr_player_idle_left_strip04; break;
		case 3: sprite_index = spr_player_idle_down_strip04; break;
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
		sprite_index = spr_player_walk_right_strip04;
		dir = 0;
	}
	if(vx < 0){
		sprite_index = spr_player_walk_left_strip04;
		dir = 2;
	}
	if(vy > 0){
		sprite_index = spr_player_walk_down_strip04;
		dir = 3;
	}
	if(vy < 0){
		sprite_index = spr_player_walk_up_strip04;
		dir = 1;
	}	
}
