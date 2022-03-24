
enum phase{
	init,
	startTurn,
	wait,
	process,
	check,
	endTurn,
	endRound,
	
}

mapPhase = phase.init;
buildingsFinished = 0;

global.totalResource = 0;
global.round = 0;
global.selectedBuilding = noone;
global.buildings = ds_list_create();

