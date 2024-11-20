


// top pipe
var set_y1 = 0;
var set_y2 = 0;

var centerPoint = random_range( 60, 440 );

var spread = random_range(70,150);

// top pipe
var topPipe = instance_create_layer(1500, centerPoint - spread , "Instances", obj_Pipe  );
  topPipe.sprite_index = sp_top; 

// bottom pipe
instance_create_layer(1500, centerPoint + spread , "Instances", obj_Pipe  );

alarm_set(0, interval_Time);