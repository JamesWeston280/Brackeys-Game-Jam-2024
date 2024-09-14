/// @description tts
which_enemy = irandom_range(0,spawn_odds);

if (which_enemy <= array_length(enemy_types)-1)
{
	instance_create_layer(x,y,"Instances", enemy_types[which_enemy]);
}
else
{
	instance_create_layer(x,y,"Instances", enemy_types[0]);
}
