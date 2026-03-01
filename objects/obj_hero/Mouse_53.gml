if (game_over)
{
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    var cx = display_get_gui_width()/2;
    var cy = display_get_gui_height()/2;

    // RESPAWN button
    if (point_in_rectangle(mx, my, cx-100, cy-10, cx+100, cy+20))
    {
        room_restart();
    }

    // QUIT button
    if (point_in_rectangle(mx, my, cx-100, cy+50, cx+100, cy+80))
    {
        game_end();
    }
}