///input_press(key)

switch(argument0){
    case action.left:
    case action.right:
    case action.up:
    case action.down:
    case action.interact:
    case action.second:
    case action.tertiary:
    case action.pause:
        return keyboard_check_pressed(global.control[argument0]);
    case action.any:
        return keyboard_check_pressed(vk_anykey);
    default:
        print("no input given!");
}
