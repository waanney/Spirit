
// input
confirm_key = vk_space;
max_input_delay = 5;
input_delay = max_input_delay;

//position

margin = 16;
padding = 8;
width = display_get_gui_width() - margin * 2;
height = sprite_height;

x = 25;
y = 544;

//text

text_font = fnt_text;
text_color = c_white;
text_speed = 0.6;
text_x = 50 ;
text_y = 50 ;
text_width = width - padding * 2;

//portrait
portrait_x = 10;
portrait_y = 10 ;
// speaker

speaker_x = padding;
speaker_y = padding;
speaker_font = fnt_name;
speaker_color = #464633;



// private properties

actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;


portrait_sprite = -1;
portrait_width = sprite_get_width(sp_henryfocus)+ 50;
portrait_height = sprite_get_height(sp_henryfocus) + 50;
portrait_side = PORTRAIT_SIDE.LEFT;

enum PORTRAIT_SIDE {
	LEFT,
	RIGHT

}

speaker_name = "";
speaker_width = sprite_get_width(sp_name);
speaker_height = sprite_get_height(sp_name);




//star a next
function next() {
	current_action++;
	if (current_action >= array_length(actions)){
		instance_destroy(obj_textbox);	
	}
	else{
		actions[current_action].act(id);	
	}
	
}



// start a conversation 
setTopic = function(topic) {
	actions = global.topics[$ topic];
	current_action = -1;
	next();
}








//set the text that should be typed out

setText = function(newText) {
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}


