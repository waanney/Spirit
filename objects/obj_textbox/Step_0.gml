//  get input

var confirm = keyboard_check_pressed(confirm_key);

//type out the test
text_progress = min(text_progress + text_speed, text_length);


// ignore inputs when delay is active
if(input_delay > 0) {
	input_delay--;
	exit;
}



// are we finished typing

if (text_progress == text_length){
	if(confirm){
		next();
	}	
}
else if (confirm){
	text_progress = text_length;


}

