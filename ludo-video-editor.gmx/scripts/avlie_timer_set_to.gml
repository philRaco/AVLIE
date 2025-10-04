///avlie_timer_set_to(real)

actions[c, ++i] = event.timer_set_to;
action_event[c, i] = argument0; //any amount of time in frames

print("    instruction", i);
print("    type", event.timer_set_to);
print("        value", argument0)
print("")
