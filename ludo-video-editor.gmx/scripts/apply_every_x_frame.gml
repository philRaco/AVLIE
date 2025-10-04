///apply_every_x_frame(frame)

/*
example: can run code ONLY on twos if argument0 = 2
*/

if (global.startsRoomTimer mod argument0) == 0{
    return true;
}
