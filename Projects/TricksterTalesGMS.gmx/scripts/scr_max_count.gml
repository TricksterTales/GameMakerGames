/// scr_max_count( obj, count );

// Reduce the number of an object to count starting with the oldest first
var type = argument0;
var count = abs( real( argument1 ) );

if( instance_number( type ) > count ) {
    var num = instance_number( type );
    var delete = num - count;
    var obj = noone;
    var counter = 0;
    while( delete > 0 ) {
        delete--;
        obj = instance_find( type, counter );
        if( instance_exists( obj ) ) {
            with( obj ) {
                instance_destroy();
                num--;
            }
            obj = -1;
        } else {
            counter++;
            delete++;
        }
        if( counter >= num ) {
            break;
        }
    }
}
