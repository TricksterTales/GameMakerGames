/// scr_input_getHor();

// The horizontal axis
var horiz = 0;

//Check Input
if( global._input_type == CONTROLER ) {
    var cont = scr_input_firstController();
    if( cont == -1 ) {
        horiz = 0;
    } else {
        // Left stick
        horiz = gamepad_axis_value( cont, gp_axislh );
    }
} else {
    // Keyboard is default
    var k_right = keyboard_check(vk_right);
    var k_left = keyboard_check(vk_left);
    horiz = k_right - k_left;
}

// Check for threshold
if( abs( horiz ) < global._input_deadzone ) {
    horiz = 0;
}

return horiz;
