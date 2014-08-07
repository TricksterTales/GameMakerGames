/// scr_input_getHor();

// The horizontal axis
var horiz = 0;

//Check Input
if( global._input_type == CONTROLLER ) {
    var cont = global._input_controller;
    if( cont == -1 ) {
        horiz = 0;
    } else {
        // Left stick
        horiz = gamepad_axis_value( cont, gp_axislh );
        
        // Also try the D-Pad
        horiz += gamepad_button_check( cont, gp_padr );
        horiz -= gamepad_button_check( cont, gp_padl );
        
        // Don't allow past 1
        if( abs( horiz ) > 1 ) {
            horiz = sign( horiz );
        }
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
