///input_release(key)

switch(argument0){
    case action.left:
    case action.right:
    case action.up:
    case action.down:
    case action.interact:
    case action.second:
    case action.tertiary:
    case action.pause:
        return keyboard_check_released(global.control[argument0]);
    case action.any:
        return keyboard_check_released(vk_anykey);
    default:
        print("no input given!");
}
