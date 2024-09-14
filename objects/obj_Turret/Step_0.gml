/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Enemy)
{
	var _m_x = instance_nearest(x,y,obj_Enemy).x;
	var _m_y = instance_nearest(x,y,obj_Enemy).y;
	
	if(alarm[2] <= 0)
	{
		var _Bullet = instance_create_layer(x,y,"Instances",obj_PlayerBullet);
		alarm[2] = weapon_cooldown;
		
		with(_Bullet)
		{	
	
			direction = point_direction(x,y,_m_x+random_range(-15,15),_m_y+random_range(-15,15));
			other.image_angle = direction;
			image_angle = direction;
			speed = 7;

		}
	}
}