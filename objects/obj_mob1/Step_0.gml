if (!dead)
{
    vsp += grav;

    var hspd = dir * spd;

    if (place_meeting(x + hspd, y, obj_solid))
    {
        while (!place_meeting(x + sign(hspd), y, obj_solid))
        {
            x += sign(hspd);
        }

        dir *= -1;
    }
    else
    {
        x += hspd;
    }


    var front_x = x + dir * 16;

    if (!place_meeting(front_x, y + 2, obj_solid))
    {
        dir *= -1;
    }


    if (place_meeting(x, y + vsp, obj_solid))
    {
        while (!place_meeting(x, y + sign(vsp), obj_solid))
        {
            y += sign(vsp);
        }

        vsp = 0;
    }
    else
    {
        y += vsp;
    }


    image_xscale = -dir;


    // DAMAGE FROM PLAYER
if (place_meeting(x, y, obj_attack_hitbox))
{
    hp -= global.hero_damage;
    hit_timer = 15;

    x += 20 * sign(x - obj_hero.x);

    if (hp <= 0 && !dead)
    {
        dead = true;

        sprite_index = hit_mob_1;
        image_index = 0;
        image_speed = 0.4;

        with (obj_ui)
        {
            score += 1;
        }
    }
}


    // HIT ANIMATION
    if (!dead)
    {
        if (hit_timer > 0)
        {
            hit_timer--;
            sprite_index = hit_mob_1;
            image_speed = 0.3;
        }
        else
        {
            sprite_index = walk_mob_1;
            image_speed = 0.2;
        }
    }
}
else
{
    if (image_index >= image_number - 1)
    {
        instance_destroy();
    }
}

// ================= DAMAGE HERO ON TOUCH =================
var p = instance_place(x, y, obj_hero);

if (p != noone && !p.invincible)
{
    p.hp -= 1;

    p.invincible = true;
    p.inv_timer = p.inv_duration;

    // knockback hero
    p.vsp = -6;
    p.x += 25 * sign(p.x - x);
}