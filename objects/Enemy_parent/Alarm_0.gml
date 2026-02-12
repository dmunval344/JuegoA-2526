if(instance_exists(OPlayer) && distance_to_object(OPlayer) < distance_to_player)
{
	target_x = OPlayer.x;
	target_y = OPlayer.y;
}
else
{
	target_x = random_range(xstart - 100, xstart + 100);
	target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 60;