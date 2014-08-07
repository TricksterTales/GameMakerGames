/// scr_input_tryController();

// If using KEYCONT try to switch to controller
if( global._input_type == KEYCONT ) {
    // If there is a valid controller
    if( global._input_controller != -1 ) {
        // Check A button on all controllers, first one is the new active
        for( var i = 0; i < global._input_controllercount; ++i ) {
            if( global._input_controlleron[ i ] && gamepad_button_check( i, gp_face1 ) ) {
                global._input_controller = i;
                global._input_type = CONTROLLER;
                scr_show_message( "Now using controller " + string( i ) );
                break;
            }
        }
    }
}
