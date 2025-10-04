///avlie_wait_for_user_input(action.{})

actions[c, ++i] = event.wait_for_user_prompt;
action_event[c, i] = argument0; //any of then action enum values

print("    instruction", i);
print("    type", event.wait_for_user_prompt);
print("        value", argument0);
print("")
