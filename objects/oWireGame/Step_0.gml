/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if (!game_over) {
    time_left -= 1;
    if (time_left <= 0) {
        game_over = true;
        result_text = "Défaite! Temps écoulé!";
    }

    // Vérification des connexions
    var all_connected = true;
    for (var i = 0; i < ds_list_size(pairs); i++) {
        var pair = pairs[| i];
        if (!pair[0].connected || !pair[1].connected) {
            all_connected = false;
            break;
        }
    }

    if (all_connected) {
        game_over = true;
        result_text = "Victoire! Toutes les connexions sont faites!";
    }
}
