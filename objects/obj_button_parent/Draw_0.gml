draw_self();
draw_set_colour(c_black);
draw_set_font(fnt_menu);

draw_set_halign(fa_center );
draw_set_valign(fa_middle);

draw_text(x + 0, y + 0, string(button_text) + "");

draw_set_halign(fa_left);
draw_set_valign(fa_top);