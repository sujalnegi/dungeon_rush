var move = 0;
if (global.level_passed)
{
    image_speed = 0;
    exit;
}
// ================= INVINCIBILITY =================
if (invincible)
{
    inv_timer--;
    image_alpha = 0.5;

    if (inv_timer <= 0)
        invincible = false;
}
else
{
    image_alpha = 1;
}

// ================= FALL DEATH =================
if (y > room_height + 200 && !dead)
{
    hp = 0;
}

// ================= DEATH TRIGGER =================
if (hp <= 0 && !dead)
{
    dead = true;
    sprite_index = Dead_Sheet;
    image_index = 0;
    image_speed = 0.3;
}

// ================= DEAD STATE =================
if (dead)
{
    if (image_index >= image_number - 1)
    {
        game_over = true;
        image_speed = 0;
    }

    if (game_over && mouse_check_button_pressed(mb_left))
    {
        room_restart();
    }

    exit;
}

// ================= ATTACK INPUT (K KEY) =================
if (keyboard_check_pressed(ord("K")) && !attacking)
{
    attacking = true;
    attack_timer = attack_duration;

    sprite_index = Attack_01_Sheet;
    image_index = 0;
    image_speed = 1;

    var distance = 40;
    var offset_y = -10;

    instance_create_layer(
        x + distance * image_xscale,
        y + offset_y,
        "Instances",
        obj_attack_hitbox
    );
}

// ================= ATTACK STATE =================
if (attacking)
{
    attack_timer--;

    if (attack_timer <= 0)
    {
        attacking = false;
    }

    exit;
}

// ================= MOVEMENT INPUT (WASD) =================
if (keyboard_check(ord("D")))
{
    move = 1;
    image_xscale = 1;
}

if (keyboard_check(ord("A")))
{
    move = -1;
    image_xscale = -1;
}

// ================= HORIZONTAL COLLISION =================
if (move != 0)
{
    var hspd = move * spd;

    if (place_meeting(x + hspd, y, obj_solid))
    {
        while (!place_meeting(x + sign(hspd), y, obj_solid))
            x += sign(hspd);

        hspd = 0;
    }

    x += hspd;
}

// ================= GRAVITY =================
vsp += grav;

// ================= VERTICAL COLLISION =================
if (place_meeting(x, y + vsp, obj_solid))
{
    while (!place_meeting(x, y + sign(vsp), obj_solid))
        y += sign(vsp);

    vsp = 0;
}
else
{
    y += vsp;
}

// ================= JUMP (W OR J KEY) =================
if ((keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("J")))
    && place_meeting(x, y + 1, obj_solid))
{
    vsp = jump_power;
}

// ================= ANIMATION =================
var grounded = place_meeting(x, y + 1, obj_solid);

if (!grounded)
{
    sprite_index = Jump_All_Sheet;
}
else if (move != 0)
{
    sprite_index = Run_Sheet;
}
else
{
    sprite_index = Idle_Sheet;
}

// ================= WIN CONDITION =================
if (!level_complete && place_meeting(x, y, obj_grass))
{
    with (obj_ui)
    {
        level_complete = true;
    }
	 obj_ui.level_complete = true;
}
if (!global.level_passed && place_meeting(x, y, obj_grass))
{
    global.level_passed = true;
}