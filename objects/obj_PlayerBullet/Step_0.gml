/// @description 

with(instance_place(x,y, obj_Enemy))
{
	enemy_take_damage();
	other.hit_target();
}


with(instance_place(x,y, obj_Wall))
{
	other.hit_target();
}