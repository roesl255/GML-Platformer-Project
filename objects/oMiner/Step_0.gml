/// @desc Core Player Logic

//Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y+1,oBlock)) && (key_jump)
{
	vsp = -jumpsp
}

//Horizontal Collision
if (place_meeting(x+hsp,y,oBlock))
{
    while (!place_meeting(x+sign(hsp),y,oBlock))
    {
		x = x + sign(hsp);
	}
    hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oBlock))
{
    while (!place_meeting(x,y+sign(vsp),oBlock))
    {
		y = y + sign(vsp);
	}
    vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oBlock))
{



}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sMinerIdle;
	}
	else
	{
		sprite_index = sMinerWalk;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

