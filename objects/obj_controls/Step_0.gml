if (visible_panel)
{
    if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any))
    {
        visible_panel = false;
        instance_destroy();
    }
}