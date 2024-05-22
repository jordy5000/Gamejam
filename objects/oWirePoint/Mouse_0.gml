/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if (!connected) {
    var game_instance = instance_find(oWireGame, 0);
    if (game_instance.selected_point == noone) {
        game_instance.selected_point = id;
    } else if (game_instance.selected_point != id) {
        var first_point = game_instance.selected_point;
        connected = true;
        first_point.connected = true;
        game_instance.selected_point = noone;
    }
}