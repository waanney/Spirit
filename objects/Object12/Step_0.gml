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
