/// @description 


spawn_odds = 100;

which_enemy = 0;

alarm[0] = -1;

enemy_types[0] = obj_Enemy;
enemy_types[1] = obj_EnemyRanged;
enemy_types[2] = obj_Enemy_POG;

function spawn_enemies()
{
	var time_to_spawn = irandom_range(5,120);
	
	alarm[0] = time_to_spawn;
}