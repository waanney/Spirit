// get player input
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A")) ;
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keySpace = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x,y+1,oWall);
var _xinput = keyRight - keyLeft;


xSpeed = _xinput * speedWalk;
ySpeed++;

// Animation movement
if(onTheGround){
	if(keyLeft) { sprite_index = run_left }
	else if(keyRight) { sprite_index = run } 
	else {sprite_index =idle }
	if(keySpace) {ySpeed = -15}
}

if(keyRight = true && keySpace = true){
	sprite_index = jump;
}

else if(keyLeft = true && keySpace = true){
	sprite_index = jump_left;
}

if(place_meeting(x +xSpeed, y,oWall)){
	xSpeed =0;
}

x += xSpeed;
if(place_meeting(x, y + ySpeed,oWall)){
	ySpeed =0;
}

y += ySpeed;

// pause the game
event_inherited();

instance_destroy(oHenry_player);



