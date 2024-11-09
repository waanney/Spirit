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
	//get round type
	if place_meeting(x, y, oPBArea) 
	{
		pushblockArea = true;
	} else
	{
		pushblockArea = false;
	}
	//sliding
	if sliding == true 
	{
		var _realDir = faceDir * 90;
		
		var _targetXDist = lengthdir_x(gridSpace, _realDir);
		var _targetYDist = lengthdir_y(gridSpace, _realDir);
		targetX = startPointX + _targetXDist;
		targetY = startPointY + _targetYDist;
		
		if pushblockArea == true 
		{
			targetX = startPointX;
			targetY = startPointY;
			
			while place_meeting(targetX + _targetXDist, targetY + _targetYDist, oPBArea)
			&& !place_meeting(targetX + _targetXDist, targetY + _targetYDist, o_wall)
			{
				targetX += _targetXDist;
				targetY += _targetYDist;
			}
		}
			
		var _targetDist = point_distance( x, y, targetX, targetY);
		var _finalSpd = min( moveSpd, _targetDist );
		xspd = lengthdir_x( _finalSpd, _realDir ); 
		yspd = lengthdir_y( _finalSpd, _realDir ); 
		
		if pushblockArea == true && !place_meeting(targetX, targetY, oPBArea) 
		{
			xspd = 0;
			yspd = 0;
		}
		
		if place_meeting(targetX, targetY, o_wall)
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