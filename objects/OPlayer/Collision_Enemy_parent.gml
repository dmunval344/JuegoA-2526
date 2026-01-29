if (alarm[0] < 0)
{
    hp -= other.damage;
    alarm[0] = 60;
    image_blend = c_red;
	obj_vida.vida -= 25;
    
    if (hp <= 0)
    {
        room_restart();
    }
}