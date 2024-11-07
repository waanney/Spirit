// Input for selecting quests
if (keyboard_check_pressed(ord("W"))) {
    global.quest_active = max(0, global.quest_active - 1);
} else if (keyboard_check_pressed(ord("S"))) {
    global.quest_active = min(array_length(global.quests) - 1, global.quest_active + 1);
}



function update_quest_status(_id, _new_status) {
    for (var i = 0; i < array_length(global.quests); i++) {
        if (global.quests[i].id == _id) {
            global.quests[i].status = _new_status;
            break;
        }
    }
}

// Example of completing a quest