
function create_quest(_id, _title, _description, _status) {
    return {
        id: _id,
        title: _title,
        description: _description,
        status: _status, // "active", "completed", "failed"
    };
}

// Initialize a list to hold all quests
global.quests = [];
global.quest_active = -1; // Currently selected quest ID, if any

// Add a quest to the list
var quest1 = create_quest(0, "har", "Retrieve the sword from the cave.", "active");
var quest2 = create_quest(1, "ha", "Retrieve the sword from the cave.", "active");
var quest3 = create_quest(2, "h", "Retrieve the sword from the cave.", "active");

array_push(global.quests, quest1, quest2, quest3);
