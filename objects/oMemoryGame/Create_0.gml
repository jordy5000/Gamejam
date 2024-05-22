/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

game_as_started = false;
grid_width = 2;
grid_height = 3;
num_cards = grid_width * grid_height;
cards = ds_list_create();
game_running = true; 
global.first_card = noone; 
global.second_card = noone; 
global.locked = false; 

//var unique_card_values = [1, 2, 3, 4];



// Remplissage de la liste avec les paires d'images
for (var i = 1; i <= num_cards / 2; i++) {
    ds_list_add(cards, i);
    ds_list_add(cards, i);
}


// Mélange aléatoire des cartes dans la liste
for (var i = num_cards - 1; i > 0; i--) {
    var index_a = irandom(i);
    var temp = cards[| i];
    cards[| i] = cards[| index_a];
    cards[| index_a] = temp;
}

// Placement des cartes sur la grille
var card_width = sprite_get_width(sCardBack);
var card_height = sprite_get_height(sCardBack);
var margin_x = 16; 
var margin_y = 16;
for (var row = 0; row < grid_height; row++) {
    for (var col = 0; col < grid_width; col++) {
        var card_index = row * grid_width + col;
        var card_x = col * (card_width + margin_x) + margin_x / 2;
        var card_y = row * (card_height + margin_y) + margin_y / 2;
        var card_instance = instance_create_layer(card_x, card_y, "layerMemoryGame", oMemoryCard);
        card_instance.card_value = cards[| card_index];
    }
}

// Timer
time_left = 8 * room_speed;
game_over = false;


// Function to handle card clicks
function card_clicked(card_id) {
    if (global.locked) return;

    if (global.first_card == noone) {
        global.first_card = card_id;
    } else if (global.second_card == noone && card_id != global.first_card) {
        global.second_card = card_id;
        global.locked = true;

		show_debug_message("SooS")

        var first_card_value = global.first_card.card_value;
        var second_card_value = global.second_card.card_value;

        // Compare card values
        if (first_card_value == second_card_value) {
            global.first_card.locked = true;
            global.second_card.locked = true;
            global.first_card = noone;
            global.second_card = noone;
            global.locked = false;
        } else {
            alarm[0] = room_speed;
        }
    }
}

ds_list_destroy(cards);


