
if(!isPaused){
	//Deplacement vers le Protas 

	if (point_distance(x, y, OProta.x, OProta.y) > 2)
	{
	    move_towards_point(OProta.x, OProta.y, 2);
	}
	else speed = 0;

	//Direction de l'Anta

	if (OProta.x > x)
	{
	    sprite_index = sAntaWalkRight;
	}else if(OProta.x < x){
	    sprite_index = sAntaWalkLeft;
	}else if(OProta.y < y){
		sprite_index = sAntaWalkUp;
	}else{
		sprite_index = sProtaWalkDown;
	}
}else{
	speed = 0;
}

//Eviter Collision entre Antas


// Attaque de l'Anta

