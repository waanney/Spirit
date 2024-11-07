if (place_meeting(x, y, oRoomGoTo_School)){
	room_goto(rm_school);
	instance_create_layer(x, y,"Instances_1"  ,oRoomGoTo_Park)
	instance_destroy(oRoomGoTo_School);

	oHenry_player.x = 459;
	oHenry_player.y = 615;
	oHenry_player.image_xscale = 2;
	oHenry_player.image_xscale = 2;

}

