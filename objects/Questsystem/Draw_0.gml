var x_start = 573; // Start position for the quest log
var y_start = 67;
var y_offset = 80; // Space between quests

// Draw all active quests in a list
for (var i = 0; i < array_length(global.quests); i++) {
    var quest = global.quests[i];
    if (quest.status == "active") {
        draw_text(x_start, y_start + y_offset * i, quest.title);
        // Highlight if it's the selected quest
        if (i == global.quest_active) {
            draw_text(x_start + 20, y_start + y_offset * (i+0.4) , quest.description);
            draw_text(x_start + 20, y_start + y_offset * (i+0.6) , "Status: " + quest.status);
        }
    }
}