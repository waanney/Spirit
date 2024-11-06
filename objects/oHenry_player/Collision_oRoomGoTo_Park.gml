if (place_meeting(x, y, oRoomGoTo_Park)){
	room_goto(rm_playground);
	instance_create_layer(x, y, "Instances_1"  ,oRoomGoTo_street)
	instance_destroy(oRoomGoTo_Park);
	
	oHenry_player.x = 450;
	oHenry_player.y = 450;
	oHenry_player.image_xscale = 2;
	oHenry_player.image_xscale = 2;


}

