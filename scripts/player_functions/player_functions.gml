// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function player_movement() 
{
	
	//left right movement
	var _move_right = keyboard_check(ord("D"));
	var _move_left = keyboard_check(ord("A"));
	
	hsp = (_move_right - _move_left) * spd;
	
	vsp += grv;
	
	//jump
	var _jump = keyboard_check_pressed(vk_space);
	
	if (_jump && remaining_jumps > 0)
	{
		vsp = 0;
		remaining_jumps --;
		vsp -= jmp_height;
	}
	
	
	//call collision function
	on_ground = player_collision();
	
	
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
	
	if(keyboard_check_pressed(ord("E")))
	{
		place_sentry();
		
	}
}

function place_sentry()
{
	if(on_ground && obj_GameMode.points >= 1000)
	{
		instance_create_layer(x+20,y,"Instances",obj_Turret);
		obj_GameMode.points -= 1000;
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

			//recoil
			other.hsp -= lengthdir_x(2,point_direction(other.x,other.y,_m_x,_m_y));
			other.vsp -= lengthdir_y(2,point_direction(other.x,other.y,_m_x,_m_y));
		


		}
	}
	
	
}

function handle_animation()
{
	if(hsp > 0)
	{
		sprite_index = sPlayerRun;
		image_xscale = 1;
	}
	else if(hsp < 0)
	{
		sprite_index = sPlayerRun;
		image_xscale = -1;
	}
	else
	{
		sprite_index = sPlayerIdle;
	}
}

function take_damage(_damage_taken)
{
	if alarm[1] <= 0
	{
		hp -= _damage_taken;
		alarm[1] = 20;
		hit = true;
		
	}
	
	if (hp <= 0)
	{
		instance_destroy();
	}
}

function handle_health()
{
	
healthbar_x = (x) - (healthbar_width/2)
healthbar_y = y - 30
	
draw_self()

draw_sprite(sHealth_bg22, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(sHealth, 0, healthbar_x, healthbar_y,min((hp/max_hp) * healthbar_width, healthbar_width), healthbar_height);
draw_sprite(sHealth_bg,0, healthbar_x, healthbar_y);
}

function player_update()
{
	player_controls();
	player_movement();
	handle_animation();
	
	x += hsp;
	y += vsp;
}