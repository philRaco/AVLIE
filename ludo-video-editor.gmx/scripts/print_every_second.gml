///print_every_second([entry, entry...])

if !apply_every_x_frame(SECONDS){
    exit;
}

var i, arg;
for (i = 0; i < 15; i += 1;){
    if argument_count > i{
       arg[i] = argument[i]
    } else {
       arg[i] = chr(59007);
    }
}

var debug_string = "";
if argument_count == 1{
    debug_string += string(arg[0]);
} else {
    for (i = 0; i < argument_count; i += 1;){
        if arg[i] != chr(59007){
            debug_string += string(arg[i]) + " > ";
        }
    }
    debug_string = string_copy(debug_string,1,string_length(debug_string) - string_length(" > "));
}

show_debug_message(debug_string);
