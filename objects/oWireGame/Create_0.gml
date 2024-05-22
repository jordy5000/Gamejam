/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


wire_points = ds_list_create();
num_points = 6;
pairs = ds_list_create(); // Pour stocker les paires de connexions
selected_point = noone;
time_left = 5 * room_speed; 
game_over = false;
result_text = "";

// Limites du sprite de fond
bg_left = x - sprite_width / 2;
bg_right = x + sprite_width / 2;
bg_top = y - sprite_height / 2;
bg_bottom = y + sprite_height / 2;

// Positionnement aléatoire des points à l'intérieur des limites du sprite de fond
for (var i = 0; i < num_points; i++) {
    var x_pos = irandom_range(bg_left + 10, bg_right - 10);
    var y_pos = irandom_range(bg_top + 10, bg_bottom - 10);
    var point = instance_create_layer(x_pos, y_pos, "layerBackWireGame", oWirePoint);
    ds_list_add(wire_points, point);
}

// Mélange aléatoire des points pour les paires
var indices = [];
for (var i = 0; i < num_points; i++) {
    indices[i] = i;
}

for (var i = 0; i < num_points; i++) {
    var j = irandom(num_points - 1);
    var temp = indices[i];
    indices[i] = indices[j];
    indices[j] = temp;
}

// Assignation des paires de points
for (var i = 0; i < num_points; i += 2) {
    var pair = [wire_points[| indices[i]], wire_points[| indices[i + 1]]];
    ds_list_add(pairs, pair);
}
