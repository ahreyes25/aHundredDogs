#region // Player States
enum playerState {
	idle,
	run,
	dive,
	roll,
	inBag,
	carryDog
}
#endregion

sprite_index	= sPlayerIdleFront;
image_speed		= 0.5;
normalImageSp	= 0.5;
slowImageSp		= 0.2;
fastImageSp		= 0.8;
hspd			= 0;
vspd			= 0;
horiz			= 0;
vert			= 0;
slowSpeed		= 1;
normalSpeed		= 3;
fastSpeed		= 5;
movementSpeed	= 3;
state			= playerState.idle;
horizFacing		= 1;
vertFacing		= 1;
xscale			= 1;
yscale			= 1;
canOpen			= true;
canBowl			= true;
numberOfBowls	= 0;
bowlCarryLimit	= 5;
bowls			= ds_list_create();
carryDog		= false;
dogHolding		= noone;
canGetBowl		= true;