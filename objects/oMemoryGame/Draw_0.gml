/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


draw_self();

if (game_running) {
    draw_text(10, 10, "Temps restant: " + string(floor(time_left / room_speed)));
}

if (game_over) {
    draw_text(room_width / 2 - 50, room_height / 2, result_text);
}
