if global.saving == 0
{
	draw_text(x, y, "Brush Size: " + string(obj_paint.xscale * 8));
	draw_text(x, y - 20, "Files are saved to and loaded from " + game_save_id);
	draw_text(x, y - 40, chr(126));
}