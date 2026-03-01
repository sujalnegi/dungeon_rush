var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var cx = gui_w / 2;
var cy = gui_h / 2;

// hearts
for (var i = 0; i < max_hp; i++)
{
    if (i < hp)
    {
        draw_sprite_ext(
            spr_heart,
            0,
            30 + i * 40,
            30,
            0.5,
            0.5,
            0,
            c_white,
            1
        );
    }
}


// game over UI
if (game_over)
{
    draw_sprite(game_over_tile,0,cx,cy-120);
    draw_sprite(click_to_restart_tile,0,cx,cy+40);
}