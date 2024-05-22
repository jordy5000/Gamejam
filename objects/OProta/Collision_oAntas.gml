/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Event: Collision avec l'Antas

if (!invincible) {
    var attack_damage = 10; // Définissez la quantité de dégâts infligés par l'antagoniste
    health -= attack_damage;
	  // Active l'invincibilité
    invincible = true;
    invincible_time = room_speed;
	
	instance_create_layer(x, y, "layerBloodSplash", oBloodSplash);
	
	//Application du recul au touché
	
	var knockback_direction = point_direction(other.x, other.y, x, y);
    var knockback_x = lengthdir_x(knockback_speed, knockback_direction);
    var knockback_y = lengthdir_y(knockback_speed, knockback_direction);

   
    if (!place_meeting(x + knockback_x, y + knockback_y, oAntas)) {
        x += knockback_x;
        y += knockback_y;
    }
	
// Si Prota mort

	if (health <= 0) {
	    instance_destroy(); 
	    show_message("Game Over");
		room_restart();
	}
}




   