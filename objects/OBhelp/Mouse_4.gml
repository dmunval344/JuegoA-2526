// Inherit the parent event
event_inherited();

if (instance_exists(OBcontrols))
{
instance_destroy(OBcontrols);
}

else
{
	instance_create_layer(room_width / 2, room_height - 100, "Instances", OBcontrols);
}
