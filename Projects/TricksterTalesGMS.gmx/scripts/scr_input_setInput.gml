/// scr_input_setInput( what );

// Set the input
// CONTROLER, KEYBOARD
global._input_type = argument0;

if( argument0 == CONTROLER ) {
    var cont = scr_input_firstController();
    if( cont == -1 ) {
        // No controller available, switch to keyboard
        global._input_type = KEYBOARD;
        show_message( "No valid controller" );
    }
} else {
    // Keyboard is default
    global._input_type = KEYBOARD;
}
