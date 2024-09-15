
if (instance_exists(obj_Player))
{
direction = point_direction(x,y,mouse_x,mouse_y)

if direction > 90 and direction < 280 image_yscale = -1; else image_yscale = 1;

image_angle = direction


if mouse_x > x
{
    x = obj_Player.x + 5;
    image_yscale = 1
}
if mouse_x < x
{
    x = obj_Player.x - 5;
    image_yscale = -1
}

y = obj_Player.y + 8;
}
else
{instance_destroy();}