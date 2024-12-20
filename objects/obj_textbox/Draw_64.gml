

// draw the box
draw_sprite_stretched(sprite_index, 0, x-10, y, width, height);


var draw_text_x = x;
var draw_text_y = y;
var draw_text_width = text_width;

var finished = text_progress == text_length; 

// portrait

if (sprite_exists(portrait_sprite)){
	draw_text_width -= portrait_width + portrait_x + padding; 
	
	var draw_portrait_x = x + portrait_x + 50;
	var draw_portrait_y = y + portrait_y + 50;
	var draw_portrait_xscale = 100;
	var draw_portrait_yscale = 100;
	
	// what side is the portrait on?
	
	if(portrait_side == PORTRAIT_SIDE.LEFT){
		
		// shift the text over when the portrait is on the left
		
		draw_text_x += portrait_width + portrait_x + padding;
	
	}
	else {
		draw_portrait_x = x + width - portrait_width - portrait_x;
		draw_portrait_xscale = -1;
	}
	
	
	var subimg = 0;
	if(finished){
		subimg = (text_progress / text_speed) * (sprite_get_speed(portrait_sprite) / game_get_speed(gamespeed_fps));
	
	draw_sprite_ext(portrait_sprite, subimg + 10,
					draw_portrait_x + portrait_width /2 - 50,50+ draw_portrait_y + portrait_height / 2,
					3, 3, 0, c_white, 1);
	
	}
	


}


if(speaker_name != ""){
	var name_w = max(string_width(speaker_name), speaker_width);
	
	draw_sprite_stretched(sp_name, 0, x + speaker_x, y + speaker_y - speaker_height / 2, name_w, speaker_height);
	
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(speaker_font);
	draw_set_color(speaker_color);
	draw_text(x + speaker_x + name_w /2, y + speaker_y, speaker_name);
}

//text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(text_font);
draw_set_color(text_color);

type(draw_text_x + text_x, draw_text_y + text_y, text, text_progress, draw_text_width);