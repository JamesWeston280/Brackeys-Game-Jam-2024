// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function enemy_movement() 
{
	
	if(x > (half_room + acceptance_range) or x < (half_room - acceptance_range))
	{
		
	}
	else
	{
		
		spd = 0;
		if(alarm[0] <= 0)
		{
			attack_tower();
		}
		
	}
	
	hsp = dir * spd;
	
	vsp += grv;

	//call collision function
	var _on_ground = enemy_collision();
	

}

function attack_tower()
{
	alarm[0] = 20;
}

function enemy_collision()
{
	var _on_ground = false;
	
	//simple player collisions
	if place_meeting(x+hsp,y,obj_Wall)
	{
		while(!place_meeting(x+sign(hsp),y,obj_Wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	if place_meeting(x,y+vsp,obj_Wall)
	{
		while(!place_meeting(x,y+sign(vsp),obj_Wall))
		{
			y = y + sign(vsp);
			_on_ground = false;
		}
		 vsp = 0;
		 _on_ground = true;
	}


	return _on_ground;

}

function enemy_take_damage()
{
	hp -= 1;
	
	if (hp <= 0)
	{
		instance_destroy();
	}
}

function enemy_update()
{
	enemy_movement();
	
	
	x += hsp;
	y += vsp;
}