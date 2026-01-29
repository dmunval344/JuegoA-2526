var _hor = real(keyboard_check(ord("D"))) - real(keyboard_check(ord("A")));
var _ver = real(keyboard_check(ord("S"))) - real(keyboard_check(ord("W")));

numeMove = _hor + _ver

if (numeMove != 0) numScaleX = numeMove;

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);


if mouse_check_button_pressed(mb_left) {
   insShoot = instance_create_layer(x, y+10, "Instances", obj_bullet);
	
	insShoot.numVX *= numScaleX
}

if (place_meeting(x, y, obj_portal))
{
 room_restart();
}

if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = player_walk_down;
    else if (_ver < 0) sprite_index = player_walk_up;
    else if (_hor > 0) sprite_index = player_walk_rigt;
    else if (_hor < 0) sprite_index = player_walk_left;
    
    facing = point_direction(0, 0, _hor, _ver);
}
else 
{
    if (sprite_index == player_walk_rigt) sprite_index = player;
    else if (sprite_index == player_walk_left) sprite_index = player;
    else if (sprite_index == player_walk_up) sprite_index = player;
    else if (sprite_index == player_walk_down) sprite_index = player;
}