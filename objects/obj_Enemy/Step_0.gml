/// @description

enemy_update();

healthbar_x = (x) - (healthbar_width/2)
healthbar_y = y - 30

with (instance_place(x,y,obj_Player))
{
	if other.alarm[1] <= 0
	{
		take_damage(1);
		other.alarm[1] = 20;
	}
}