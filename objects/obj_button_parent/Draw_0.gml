/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06F020B5
/// @DnDArgument : "code" "draw_self();$(13_10)draw_set_colour(c_black);$(13_10)draw_set_font(fnt_menu);$(13_10)$(13_10)draw_set_halign(fa_center );$(13_10)draw_set_valign(fa_middle);$(13_10)$(13_10)draw_text(x + 0, y + 0, string(button_text) + "");$(13_10)$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);"
draw_self();
draw_set_colour(c_black);
draw_set_font(fnt_menu);

draw_set_halign(fa_center );
draw_set_valign(fa_middle);

draw_text(x + 0, y + 0, string(button_text) + "");

draw_set_halign(fa_left);
draw_set_valign(fa_top);