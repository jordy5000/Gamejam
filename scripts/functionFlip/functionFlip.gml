// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function flip_card() {
    if (!flipped) {
        flipped = true;
        
        sprite_index = sCardFront;
        image_index = card_value - 1; 
    } else {
        flipped = false;
        sprite_index = sCardBack;
    }
}


