/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Event: Draw (for obj_wire_game)
draw_self();

if (!game_over) {
    draw_text(10, 10, "Temps restant: " + string(floor(time_left / room_speed)));
} else {
    draw_text(room_width / 2 - 50, room_height / 2, result_text);
}

// Dessin des fils connectés
for (var i = 0; i < ds_list_size(pairs); i++) {
    var pair = pairs[| i];
    if (pair[0].connected && pair[1].connected) {
        draw_line(pair[0].x, pair[0].y, pair[1].x, pair[1].y);
    }
}
