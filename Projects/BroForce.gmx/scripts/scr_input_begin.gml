/// scr_input_begin();

// Start the global variables for input
global._input_type = KEYBOARD;
global._input_deadzone = 0.25;
global._input_valid = true;

// Handling controller states
global._input_controller = -1;  // -1 = None
global._input_controllercount = gamepad_get_device_count();
for( var c = 0; c < global._input_controllercount; ++c ) {
    // Per controller active
    global._input_controlleron[ c ] = gamepad_is_connected( c );
}

// The buttons' current values
global._input_buttons[BTN_JUMP] = false;
global._input_buttons[BTN_FIRE] = false;

// The buttons' previous values
global._input_pbuttons[BTN_JUMP] = false;
global._input_pbuttons[BTN_FIRE] = false;
