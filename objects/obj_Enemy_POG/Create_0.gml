/// @description Init

hsp = 0;
vsp = 0;
spd = 2;

grv = 0.5;
dir = 0;

max_hp = 20 + obj_GameMode.hp;
hp = max_hp;

healthbar_width = 16
healthbar_height = 4

healthbar_x = 0;
healthbar_y = 0;
hit = false;

acceptance_range = 40;

half_room = room_width/2;

if (x > half_room)
{
	dir = -1;
}

if (x < half_room)
{
	dir = 1;
}

