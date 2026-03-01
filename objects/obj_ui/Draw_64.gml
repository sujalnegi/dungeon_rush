draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var margin = 60;
var scale = 0.2;

// ================= SCORE =================
var sw = sprite_get_width(score_counter) * scale;
var sh = sprite_get_height(score_counter) * scale;

var sx = display_get_gui_width() - sw - margin;
var sy = 20;

draw_sprite_ext(
    score_counter,
    0,
    sx,
    sy,
    scale,
    scale,
    0,
    c_white,
    1
);

draw_text(
    sx + sw + 10,
    sy + sh * 0.5,
    string(score)
);


// ================= LEVEL PASSED =================
if (level_complete)
{
    var s = 0.35;

    draw_sprite_ext(
        level_passed,
        0,
        display_get_gui_width() * 0.5,
        display_get_gui_height() * 0.5,
        s,
        s,
        0,
        c_white,
        1
    );
}
