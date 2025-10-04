///avlie_timer_set_pos(0-10)

actions[c, ++i] = event.timer_set_pos;
action_event[c, i] = argument0; //any of then action enum values

print("    instruction", i);
print("    type", event.timer_set_pos);
print("        value", argument0)
print("")
