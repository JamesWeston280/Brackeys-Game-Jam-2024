/// @description 

alarm[0] = -1;

function spawn_enemies()
{
	var time_to_spawn = irandom_range(5,120);
	
	alarm[0] = time_to_spawn;
}