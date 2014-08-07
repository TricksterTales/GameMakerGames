/// scr_input_updateButtons();

// Update the previous values
global._input_pbuttons[BTN_JUMP] = global._input_buttons[BTN_JUMP];
global._input_pbuttons[BTN_FIRE] = global._input_buttons[BTN_FIRE];

// Check if input is valid
if( !global._input_valid ) {
    global._input_valid = true;
    global._input_buttons[BTN_JUMP] = false;
    global._input_buttons[BTN_FIRE] = false;
    exit;
}

// Get the new values
if( global._input_type == CONTROLLER ) {
    // Get active controller number
    var cont = global._input_controller;
    // A button
    global._input_buttons[BTN_JUMP] = gamepad_button_check( cont, gp_face1 );
    // B button or Right Trigger
    global._input_buttons[BTN_FIRE] = gamepad_button_check( cont, gp_face3 ) ||
        ( gamepad_button_value( cont, gp_shoulderrb ) >= 0.9 );
} else {
    // Keyboard is default
    global._input_buttons[BTN_JUMP] = keyboard_check(vk_up);
    global._input_buttons[BTN_FIRE] = keyboard_check(vk_space);
}
