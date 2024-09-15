countdown --;
if instance_exists(obj_Enemy)
{round_countdown = 120}

if wave > 0 
{
	alarm[0] = countdown
}
else
{
	if !instance_exists(obj_Enemy){
		round_countdown --;
	}
	
	if wave <= 0 && !instance_exists(obj_Enemy) && round_countdown < 0
	{
		round_counter ++;
		hp += hp_increase
		wave = round_counter;
		countdown = time;
	}
}
