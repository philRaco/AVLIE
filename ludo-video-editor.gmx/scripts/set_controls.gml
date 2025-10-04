///set_controls(left,up,right,down,interact,second,tertiary,pause)

/*set all controls at once*/
/*only for overworld-type stuff not menu*/
/*omg this is nutty*/

for (var i = 0; i < argument_count - 1; ++i){
    global.control[i] = argument[i];
}
