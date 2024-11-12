// get player input
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A")) ;
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

var _xinput = keyRight - keyLeft;
var _yinput = keyDown - keyUp;



move_and_collide(_xinput * speedWalk, _yinput * speedWalk, oWall);



// Animation movement

if( keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	sprite_index = sp_Henry_left ;
} 

else if ( keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	sprite_index = sp_Henry_right;
}

else if (  keyboard_check(vk_up) || keyboard_check(ord("W")))
{
	sprite_index = sp_Henry_up;
}

else if (  keyboard_check(vk_down) || keyboard_check(ord("S")))
{
	sprite_index = sp_Henry_down;
}
else
{
	sprite_index = sp_Henry_stand;
}

// pause the game
event_inherited();

if(place_meeting(x,y,oRoomGoTo_Home)){
	
	roomcount =+ 1;
	if(roomcount == 2){
		instance_destroy(oRoomGoTo_street);
	};

};


