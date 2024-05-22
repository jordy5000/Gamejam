//Catch keyboard inputs

press_right = keyboard_check(vk_right);
press_left = keyboard_check(vk_left);
press_up = keyboard_check(vk_down);
press_down = keyboard_check(vk_up);

press_interact = keyboard_check(vk_space);


//Mouvements 

var movehorizontal = press_right - press_left;
var movevertical = press_up - press_down;
hspd = movehorizontal * wlkspd;
vspd = movevertical * wlkspd;
x = x+hspd;
y = y+vspd;


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


