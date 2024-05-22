/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

card_value = 0;
flipped = false;
locked =false;

sprite_index = sCardBack;




function flip() {
    if (!flipped) {
        flipped = true;
        image_index = card_value;
        sprite_index = sCardFront;
    }
}



