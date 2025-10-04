///avlie_end_event()

actions[c, ++i] = event.end_event;
action_event[c, i] = 0; //set instruction to 0 and advance

print("    end_event", event.end_event);
print("");

//i don't know why this fixes event_end_event but it does
event_set_advance_by_event(false);
