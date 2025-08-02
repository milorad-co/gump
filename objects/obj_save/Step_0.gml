if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)
{
	global.selected = 12;
}
if global.selected == 12 and wordstring != "That key already exists.\n"
{
	if keyboard_check_pressed(vk_anykey)
	{
		wordstring += string(keyboard_string);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_backspace)
	{
		wordstring = string_delete(wordstring, string_length(wordstring), 1);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_enter)
	{
		if file_exists(game_save_id + wordstring + ".mif")
		{
			wordstring = "That file already exists.\n"
		}
		else
		{
			ini_open(game_save_id + wordstring + ".mif");
			instance_create_layer(0, 100, "Instances", obj_saver, {writefile : wordstring});
		}		
	}
}
if global.selected != 12
{
	wordstring = "";
}