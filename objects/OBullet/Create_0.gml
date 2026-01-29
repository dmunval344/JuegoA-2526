speed = 1;
numVX=3


direction = obj_player.image_angle;

function bullet(){
	if(bullet == noone) { exit;}

bullet.angle = point_direction(x,y-4,mouse_x,mouse_y);

if (mouse_check_button_pressed(mb_left)){
	var bx = x + lengthdir_x(13, bullet.angle);
	var by = - 6 + lengthdir_y(13, bullet.angle);
}
}