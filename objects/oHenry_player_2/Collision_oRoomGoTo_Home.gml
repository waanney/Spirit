if (place_meeting(x, y, oRoomGoTo_Home)){
	room_goto(rm_home); /// move to other room
	instance_destroy();
	
	oHenry_player.x = 450;
	oHenry_player.y = 450;
	oHenry_player.image_xscale = 2;
	oHenry_player.image_yscale = 2;

}
