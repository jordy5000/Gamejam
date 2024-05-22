/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if (instance_exists(oMemoryGame) && !oMemoryGame.game_running) {
    exit;
}

if (!locked && !flipped) {
    flip_card();
    with (oMemoryGame) {
       card_clicked(id);
    }
}




