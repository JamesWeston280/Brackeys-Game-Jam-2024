/// @description Insert description here
// You can write your code in this editor

healthbar_x = (x) - (healthbar_width/2);
healthbar_y = y - 50;

if(hp <= 0)
{
	obj_GameMode.game_over = true;
}