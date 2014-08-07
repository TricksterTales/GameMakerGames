/// scr_input_setInput( what );

// Update controller status
scr_input_checkController();

// Set the input
// CONTROLER, KEYBOARD
global._input_type = argument0;

if( argument0 == CONTROLLER ) {
    scr_input_tryController();
    var cont = global._input_controller;
    if( cont == -1 ) {
        // No controller available, switch to KEYCONT
        global._input_type = KEYCONT;
        scr_show_message( "No valid controller, use keyboard in the meantime" );
    } else {
        scr_show_message( "Now using controller " + string( global._input_controller ) );
    }
} else {
    // Keyboard is default
    global._input_type = KEYBOARD;
    scr_show_message( "Now using keyboard" );
}
