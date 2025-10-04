///avlie_end_instruction();

actions[c, ++i] = event.do_last_instruction;
action_event[c, i] = 0; //set instruction to 0 and advance

print("    last instruction", event.do_last_instruction);
print("        value", 0);
print("");

//i don't know why this fixes event_end_instruction but it does
actions[c, ++i] = event.do_last_instruction;
action_event[c, i] = 0; //set instruction to 0 and advance

print("    last instruction", event.do_last_instruction);
print("        value", 0);
print("");
