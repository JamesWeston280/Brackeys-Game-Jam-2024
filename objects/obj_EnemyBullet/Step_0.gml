/// @description 

with(instance_place(x,y, obj_Player))
{
	take_damage(1);
	other.hit_target();
}


with(instance_place(x,y, obj_Wall))
{
	other.hit_target();
}