/// scr_input_setThreshold( thresh );

// Set the threshold
global._input_deadzone = argument0;

// Make sure it's a good number
if( argument0 < 0 ) {
    global._input_deadzone = 0;
} else if( argument0 > 1 ) {
    global._input_deadzone = 1;
}
