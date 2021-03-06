repeat(irandom_range(1, 3)) {
	DumpstersOutside();
}

// Create player not in wall
var rx = random_range(48, room_width  - 48);
var ry = random_range(48, room_height - 48);

while (collision_point(rx, ry, oSolid, false, true) != noone || !InsideRoom(rx, ry, false, true)) {
	rx = random_range(48, room_width  - 48);
	ry = random_range(48, room_height - 48);
}
instance_create_layer(rx, ry, "Game", oPlayer);

alarm[1] = 300;

if (numberOfDoors == 0 || numberOfToilets == 0 ||
	numberOfDumpsters == 0 || numberOfPantries == 0 || numberOfCabinets == 0) {
		audio_stop_sound(DogsIncoming);
		room_restart();		
}