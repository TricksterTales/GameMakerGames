/// scr_input_firstController();

// Return the first active controller
var count = gamepad_get_device_count();
for( var i = 0; i < count; ++i ) {
    if( gamepad_is_connected( i ) ) {
        return i;
    }
}
return -1;
