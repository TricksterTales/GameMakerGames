/// scr_input_checkController();

// Update controller states
var firstOn = -1;
for( var c = 0; c < global._input_controllercount; ++c ) {
    global._input_controlleron[ c ] = gamepad_is_connected( c );
    if( firstOn == -1 && global._input_controlleron[ c ] ) {
        firstOn = c;
    }
}

// If you need to check for controller do so
if( global._input_type == CONTROLLER ) {
    // Shouldn't be
    if( global._input_controller == -1 ) {
        scr_show_message( "Active controller disabled, use keyboard until back" );
        global._input_type = KEYCONT;
        global._input_controller = firstOn;
    } else {
        // Current controller not working, switch to keyboard
        if( !global._input_controlleron[ global._input_controller ] ) {
            scr_show_message( "Active controller disabled, use keyboard until back" );
            global._input_type = KEYCONT;
            global._input_controller = firstOn;
        }
    }
} else if( global._input_type == KEYCONT ) {
    // No current controller
    if( global._input_controller == -1 ) {
        // Controller(s) active
        if( firstOn != -1 ) {
            global._input_controller = firstOn;
        }
    } else {
        // Set the first controller
        global._input_controller = firstOn;
    }
} else {
    // Otherwise, don't use one
    global._input_controller = firstOn;
}
