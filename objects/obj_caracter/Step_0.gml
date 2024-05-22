
if (playstate == "Attack") {
		

}
else {
playstate = "Idle";
if (keyboard_check(vk_right)){
	x += h_speed;
	playstate = "Walk"
}

if(keyboard_check(vk_left)){
	x -= h_speed;
	playstate = "Walk"
}

if(keyboard_check(vk_up)){
y -= v_speed;
playstate = "Walk"
}

if(keyboard_check(vk_down)){
y += v_speed;	
playstate = "Walk"
}

if(keyboard_check(vk_space)){
playstate = "Attack"
}

if(playstate == "Idle") {
	sprite_index = sprKnightIdle;
} else if (playstate == "Walk") {
sprite_index = sprKnightWalk;
}
}


