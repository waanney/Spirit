if room = rm_home or room = rm_street or room = rm_school or room = rm_playground

{

if keyboard_check_pressed(ord("P"))

    {

    global.paused = !global.paused;

    if global.paused == false

        {

        instance_activate_all();

        surface_free(paused_surf);

                paused_surf = -1;

        }

    }

if global.paused == true

    {

    alarm[0]++;

    alarm[1]++;

    }
}

alarm[0] += 1;
// or
alarm[0] = alarm[0] + 1;