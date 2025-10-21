goal_y = y + 20;

if (collision_point(mouse_x,mouse_y,self,false,false)) 
{
	if (looking_at_me == false)
	{
		audio_play_sound(snd_button_hover,1,false,1 - global.mute);
	}
	
	looking_at_me = true;
}
else
{
	looking_at_me = false;
}

if (looking_at_me) && (mouse_check_button(mb_left))
{
	if (clicked == false)
	{
		audio_play_sound(snd_button_press,1,false,1 - global.mute);
	}
		
	clicked = true;
	
	y_coordinate = lerp(y_coordinate, goal_y, lerp_amount);
}
else
{
	clicked = false;
	
	y_coordinate = lerp(y_coordinate, y, lerp_amount);
}
