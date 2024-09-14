/// @description 


spawn_odds = 12;

which_enemy = 0;

alarm[0] = -1;

enemy_types[0] = obj_Enemy;
enemy_types[1] = obj_EnemyRanged;

function spawn_enemies()
{
	var time_to_spawn = irandom_range(5,120);
	
	alarm[0] = time_to_spawn;
}