// get player input
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A")) ;
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));


var _xinput = keyRight - keyLeft;
xSpeed = _xinput * speedWalk;

// Animation movement
if(keyLeft){
	sprite_index = run_left ;
	stat = 1;
	
	if (keyUp){
		forceUp = -5;
		if(stat == 0){
			sprite_index = jump;
		}else{
			sprite_index = jump_left;
		}
	}
} else if (keyRight){
	sprite_index = run;
	stat = 0;
	if (keyUp){
		forceUp = -5;
		if(stat == 0){
			sprite_index = jump;
		}else{
			sprite_index = jump_left;
		}
	}
} else if ( keyUp){
	forceUp = -5;
} else{
	if(stat == 0){
		sprite_index = idle;
	}else{
		sprite_index = idle_left;
	}
}
if(place_meeting(x + xSpeed, y, o_wall)){
	xSpeed = 0;
}
x += xSpeed;
if(place_meeting(x, y + forceUp, o_wall)){
	forceUp = 0;
}

if(stat == 0){
		if (y > yprevious) { sprite_index = jumpdown;}
		else if(y < yprevious) {  sprite_index = jump;}
	}else{
		if (y > yprevious) { sprite_index = jumdownp_left;}
		else if(y < yprevious) {  sprite_index = jump_left;}
	}
	
y += forceUp;
forceUp += 0.3;

// pause the game
event_inherited();




