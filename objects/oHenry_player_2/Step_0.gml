// get player input
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A")) ;
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

#region
	xspd = (keyRight - keyLeft) * moveSpd;
	yspd = (keyDown - keyUp) * moveSpd;
	//set sprites
	mask_index = sprite[3];
	if yspd == 0
	{
		if xspd > 0 {face = 0;}
		if xspd < 0 {face = 2;}
	}
	if xspd > 0 && face == 2 {face = 0;}
	if xspd < 0 && face == 0 {face = 2;}
	if xspd == 0 
	{
		if yspd > 0 {face = 3;}
		if yspd < 0 {face = 1;}
	}
	if yspd > 0 && face == 1 {face = 3;}
	if yspd < 0 && face == 3 {face = 1;}
	sprite_index = sprite[face];
	
	//collisions
	if place_meeting(x + xspd, y, o_wall)
	{
		xspd = 0;
	}
	if place_meeting(x, y + yspd, o_wall)
	{
		yspd = 0;
	}
	x += xspd;
	y += yspd;
	if xspd == 0 && yspd == 0
	{
		image_index = 0;
	}
	//depth
	depth = -y;
#endregion
	
	
	
// interact with push blocks
if keyActivate == true
{
	var _checkDir = face * 90;
	var _checkX = x + lengthdir_x(interactDist, _checkDir);
	var _checkY = y + lengthdir_y(interactDist, _checkDir);
	var _pushBlockInst = instance_place(_checkX, _checkY, oPushBlock);
	if instance_exists(_pushBlockInst) && _pushBlockInst.sliding == false
	{
		_pushBlockInst.sliding = true;
		_pushBlockInst.faceDir = face;
	} 
}

instance_destroy(oHenry_player);