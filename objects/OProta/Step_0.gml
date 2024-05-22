//Catch keyboard inputs

press_right = keyboard_check(vk_right);
press_left = keyboard_check(vk_left);
press_up = keyboard_check(vk_down);
press_down = keyboard_check(vk_up);

press_interact = keyboard_check(vk_space);


//Mouvements 

var movehorizontal = press_right - press_left;

hspd = movehorizontal * wlkspd;

var movevertical = press_up - press_down;
 
vspd = movevertical * wlkspd;

if (press_right && !place_meeting(x + 5, y, Obj_collision)) || (press_left  && !place_meeting(x - 5, y, Obj_collision))
{
	x += hspd;
}else if (press_up && !place_meeting(x, y - 5,  Obj_collision)) || (press_down && !place_meeting(x, y + 5,  Obj_collision))
{
	y += vsp;
}



//Animations 

if(press_right == true){
	sprite_index = sProtaWalkRight;
}else if (press_left ==true){
	sprite_index = sProtaWalkLeft;
}else if (press_up==true){
	sprite_index = sProtaWalkDown;
}else if (press_down==true){
	sprite_index = sProtaWalkUp;
}else{
	sprite_index = sProta;
}


//Update Health

if (health < 0) health = 0;

//Invincibilité

if (invincible) {
    invincible_time -= 1;
    if (invincible_time <= 0) {
        invincible = false;
    }
}




