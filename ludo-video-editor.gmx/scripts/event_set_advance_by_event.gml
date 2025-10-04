///event_set_advance_by_event(bool)

/*
if true, next wait instruction will move to the next event
if false, next wait instruction will move to the next instruction
*/

actions[c, ++i] = event.dia_set_advance_event;
action_event[c, i] = argument0;

print("    instruction", i);
print("    type", event.dia_set_advance_event);
print("        value", argument0)
print("")
