/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur



if (game_running) {
    time_left -= 1;

    if (time_left <= 0) {
        game_running = false;
        game_over = true;
        show_message("Game Over - Memory Game");
    }

    
    var all_locked = true;
    with (oMemoryCard) {
        if (!locked) {
            all_locked = false;
        }
    }
    if (all_locked) {
        game_running = false;
        game_over = true;
        show_message("Victoire ! Memory Game");
    }
}
