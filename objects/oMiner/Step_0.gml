/// @desc Core Player Logic

//Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,oBlock))
{
    while (!place_meeting(x+hsp,y,oBlock))
    {
		x = x + sign(hsp);
	}

}
x = x + hsp;