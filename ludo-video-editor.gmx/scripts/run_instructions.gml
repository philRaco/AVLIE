///run_instructions()

switch(actions[current_event, instruction]){
    //always first
    case event.end_event:
        print("bye-bye!");
        instance_destroy();
        exit;
    break;
    case event.do_last_instruction: 
        instruction = e; //start instruction
        print("event.do_last_instruction");
        //start new event, set instruction counter to 0
        next_event();
    break;
    case event.end_instruction: 
        instruction = e; //start instruction
        print("event.do_last_instruction");
        //start new event, set instruction counter to 0
        next_event();
    break;
    case event.dia_set_advance_event:
        instruction = e; //start instruction
        print("event.dia_set_advance_event");
        advance_by_event = instruction_value();
    break;
    //anyways
    
    
    
        //                      TIMER                        //
        
        
    
        
    case event.timer_set_pos:
        instruction = e; //start instruction
        print("event.dia_set_advance_event");
        current_main_timer = instruction_value();
    break;
    case event.timer_set_to:
        instruction = e; //start instruction
        print("event.dia_set_advance_event");
        timer[current_main_timer] = instruction_value();
    break;
    
    
    
        //                      waiting games                        //
        
    
        
    case event.wait_for_user_prompt:
    case event.wait_one_frame:
    case event.wait_until_timer:
        print("waiting event")
        instruction_loop_lock = e; //lock until instruction done
        if !wait_for_instruction_fulfilled{
            if instruction_fulfilled{
                print("unlocked!")
                instruction_loop_lock = max_loop_lock;
                instruction++;
                e = instruction; //will this make it like not overlook it?
                instruction_fulfilled = false;
            }
        }
        wait_for_instruction_fulfilled = true; //uhhh
        print("wait_for_instruction_fulfilled",wait_for_instruction_fulfilled);
    break;
    //always last
    case event.allowed_to_continue:
        instruction = e; //start instruction
        print("event.allowed_to_continue", event.allowed_to_continue);
        can_continue_event = action_event[current_event, instruction];
    break;
    default:
        print("AVLIE ERROR: feature not implemented")
    break;
}
