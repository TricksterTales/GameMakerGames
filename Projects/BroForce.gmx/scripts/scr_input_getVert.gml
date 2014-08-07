/// scr_input_getVert();

// The vertical axis
var vert = 0;

//Check Input
if( global._input_type == CONTROLLER ) {
    var cont = global._input_controller;
    if( cont == -1 ) {
        vert = 0;
    } else {
        // Left stick
        vert = -gamepad_axis_value( cont, gp_axislv );
        
        // Also try the D-Pad
        vert += gamepad_button_check( cont, gp_padu );
        vert -= gamepad_button_check( cont, gp_padd );
        
        // Don't allow past 1
        if( abs( vert ) > 1 ) {
            vert = sign( vert );
        }
    }
} else {
    // Keyboard is default
    var k_up = keyboard_check(vk_up);
    var k_down = keyboard_check(vk_down);
    vert = k_up - k_down;
}

// Check for threshold
if( abs( vert ) < global._input_deadzone ) {
    vert = 0;
}

return vert;
