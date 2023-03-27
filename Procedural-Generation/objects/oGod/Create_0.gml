/*
NOTES:
	-DELETE ALL OBJECTS AFTER TERRAIN GENERATION IS DONE AND REPLACE THEM WITH TILESETS
	-FIX GENERATION RULES, SOMETIMES WHEN THERE'S A MOUNTAIN CIRCLE IT WON'T GENERATE ANYTHING INSIDE
		(MAYBE ADD A DEFAULT GROUND TILE IF THERE'S NOTHING GENERATED)
*/


#macro TILEBIG 40
#macro CHOOSE_WATER_OPTIONS choose(oGround, oWater)
#macro CHOOSE_TREE_OPTIONS choose(oGround,oGround, oTree, oRiverside)
#macro CHOOSE_RIVERSIDE_OPTIONS choose(oWater, oWater, oWater, oWater, oRiverside)
#macro CHOOSE_GROUND_OPTIONS choose(oTree, oTree, oMountain, oGround, oGround, oGround,oGround,oGround,oGround)
#macro CHOOSE_MOUNTAIN_OPTIONS choose(oGround,oGround,oGround,oMountain)

enum tiles
{
water,
ground,
tree,
mountain,
riverside,
}

timer=0
maxTime=real(get_string("Set render distance",""))



global.childrenStop=false

startPointX=0
endPointX=640

startPointY=0
endPointY=480

finishedGenerating=false

camX=camera_get_view_x(view_camera[0])
camY=camera_get_view_y(view_camera[0])