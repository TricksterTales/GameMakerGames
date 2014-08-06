/// scr_input_getButton( btn );

// Return a true or false for a button being active
if( global._input_type == CONTROLER ) {
    var cont = scr_input_firstController();
    if( cont == -1 ) {
        return false;
    }
    switch( argument0 ) {
        case BTN_JUMP:  // A button
            return gamepad_button_check( cont, gp_face1 );
        case BTN_FIRE:  // B button
            return gamepad_button_check( cont, gp_face3 );
        default:
            return false;
    }
} else {
    // Keyboard is default
    switch( argument0 ) {
        case BTN_JUMP:
            return keyboard_check(vk_up);
        case BTN_FIRE:
            return keyboard_check(vk_space);
        default:
            return false;
    }
}
