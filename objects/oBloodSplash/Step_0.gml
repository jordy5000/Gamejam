/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


// Event: Step (for obj_blood_splash)
lifetime -= 1;
if (lifetime <= 0) {
    instance_destroy();
}