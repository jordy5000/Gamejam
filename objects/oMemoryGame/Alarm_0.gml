/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if (global.first_card != noone && global.second_card != noone) {
    global.first_card.flipped = false;
    global.second_card.flipped = false;
    global.first_card.sprite_index = sCardFront;
    global.second_card.sprite_index = sCardFront;
    global.locked = false;
}