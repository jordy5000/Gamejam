/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur



if (!game_over) {
    // Vérification si tous les boutons sont à la bonne position
    var all_correct = true;
    for (var i = 0; i < ds_list_size(buttons); i++) {
        var button = buttons[| i];
        if (!button.correct_position) {
            all_correct = false;
            break;
        }
    }

    if (all_correct) {
        game_over = true;
        show_message("Victoire ! Button Game !");
    }
}

