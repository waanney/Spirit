//slide in random direction test

//what state are we in
	// idle /not sliding
	if sliding == false
	{
		//set out starting coordinates
		startPointX = x;
		startPointY = y;
		
		//reset movement speed
		xspd = 0;
		yspd = 0;
	}
	//sliding
	if sliding == true 
	{
		var _realDir = faceDir * 90;
		
		var _targetXDist = lengthdir_x(gridSpace, _realDir);
		var _targetYDist = lengthdir_y(gridSpace, _realDir);
		targetX = startPointX + _targetXDist;
		targetY = startPointY + _targetYDist;
		
		var _targetDist = point_distance( x, y, targetX, targetY);
		var _finalSpd = min( moveSpd, _targetDist );
		xspd = lengthdir_x( _finalSpd, _realDir ); 
		yspd = lengthdir_y( _finalSpd, _realDir ); 
		
		if place_meeting(targetX, targetY, oWall)
		{
			xspd = 0;
			yspd = 0;
		}
	}

//move
x += xspd;
y += yspd;

//done with sliding
if xspd == 0 && yspd == 0
{
	sliding = false;
}

//depth
depth = -bbox_bottom;