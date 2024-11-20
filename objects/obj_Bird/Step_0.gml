
// action
if (keyboard_check(vk_space)) { 
		forceUp = -2;
	}


// gravity	
y += forceUp;	
forceUp += 0.05;


// animation
if (y > yprevious) { sprite_index = sp_characterBean; maxAngle = -15;   }
 else {  sprite_index = sp_flyup; maxAngle = 15;   }
 
 
 angle = lerp(angle, maxAngle, 0.1 );
 image_angle = angle;
