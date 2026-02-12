var _hor = real(keyboard_check(ord("D"))) - real(keyboard_check(ord("A")));
var _ver = real(keyboard_check(ord("S"))) - real(keyboard_check(ord("W")));

numeMove = _hor + _ver

if (numeMove != 0) numScaleX = numeMove;

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);


if mouse_check_button_pressed(mb_left) {
   insShoot = instance_create_layer(x, y+10, "Instances", obj_bullet);
	
	insShoot.numVX *= numScaleX
}
