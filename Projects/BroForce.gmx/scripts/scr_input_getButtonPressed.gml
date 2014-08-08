/// scr_input_getButtonPressed( btn );

// Return yes now and not before == pressed
return global._input_buttons[argument0] && !global._input_pbuttons[argument0];
