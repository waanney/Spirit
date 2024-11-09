if instance_exists(buttonObj) 
{
	state = buttonObj.state;
}

if state == 0
{
	mask_index = sprite_index;
}

if state == 1
{
	mask_index = sNoCollisions;
}


image_index = state;