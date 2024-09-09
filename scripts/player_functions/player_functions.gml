// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function player_movement() 
{
	
	//left right movement
	var _move_right = keyboard_check(ord("D"));
	var _move_left = keyboard_check(ord("A"));
	
	hsp = (_move_right - _move_left) * spd;
	
	vsp += grv;
	
	//call collision function
	var _on_ground = player_collision();
	
	
	//jump
	var _jump = keyboard_check_pressed(vk_space);
	
	if (_jump && remaining_jumps > 0)
	{
		vsp = 0;
		remaining_jumps --;
		vsp -= jmp_height;
	}
}


function player_collision()
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
		 remaining_jumps = max_jumps;
	}


	return _on_ground;

}

function player_controls()
{
	if(mouse_check_button(mb_left))
	{
		player_shoot();
	}
}

function player_shoot()
{
	var _m_x = mouse_x;
	var _m_y = mouse_y;
	
	if(alarm[0] <= 0)
	{
		var _Bullet = instance_create_layer(x,y,"Instances",obj_PlayerBullet);
		alarm[0] = weapon_cooldown;
		
		with(_Bullet)
		{	
	
			direction = point_direction(x,y,_m_x+random_range(-15,15),_m_y+random_range(-15,15));
			image_angle = direction;
			speed = 15;

		}
	}
	
	
}


function player_update()
{
	player_movement();
	player_controls();
	
	
	x += hsp;
	y += vsp;
}