var _hor = real(keyboard_check(ord("D"))) - real(keyboard_check(ord("A")));
var _ver = real(keyboard_check(ord("S"))) - real(keyboard_check(ord("W")));

numeMove = _hor + _ver;

if (numeMove != 0) {
	numScaleX = numeMove;
}


if mouse_check_button_pressed(mb_left) {
   insShoot = instance_create_layer(x, y+10, "Instances", OBullet);
	
	insShoot.numVX *= numScaleX
}

x = x + _hor;
y = y + _ver;

//move_and_collide(_hor,_ver,)