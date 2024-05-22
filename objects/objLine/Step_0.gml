/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(mouse_check_button_pressed(mb_left)){
	targetAngle = point_direction(x, y, mouse_x, mouse_y);
	with(oAntas){
		isPaused = !isPaused;
	}
	showGui = !showGui;
}

image_angle= lerp(image_angle, targetAngle, 0.1);

