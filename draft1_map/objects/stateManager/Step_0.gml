switch(mapPhase){
	case phase.init:
		if (keyboard_check_released(vk_space)){
			mapPhase = phase.endTurn;
		}
		for (var i = 0; i < instance_number(spawn);i++){
			var spawner = instance_find(spawn, i);
			var building = instance_create_depth(spawner.x,spawner.y,0,pBuilding);
			ds_list_add(global.buildings, building);
		}
		
		mapPhase = phase.startTurn;
	break;
	
	case phase.startTurn:
		if (keyboard_check_released(vk_space)){
			mapPhase = phase.endTurn;
		}
			
		if (buildingsFinished >= ds_list_size(global.buildings)){
			for (var i = 0; i < ds_list_size(global.buildings);i++){
				with(global.buildings[|i])
					turnFinished = false;
			}
			buildingsFinished = 0;
		}
	
		for (var i = 0; i < ds_list_size(global.buildings);i++){
			var inst = global.buildings[|i];
			if (inst.turnFinished == false){
				inst.selected = true;
				global.selectedBuilding = inst;
				global.totalResource += inst.current[RESOURCE];
				break;
			}
		}
	
		mapPhase = phase.wait;
	break;
	
	case phase.wait:
		if (global.selectedBuilding.turnFinished == true){
			global.selectedBuilding.selected = false;
			buildingsFinished++;
			mapPhase = phase.process;
		}
	break;
	
	case phase.process:
		mapPhase = phase.check;
	break;
	
	case phase.check:
		if (keyboard_check_released(vk_space))
			mapPhase = phase.endTurn;
		if (keyboard_check_released(vk_enter))
			mapPhase = phase.endRound;
	break;
	
	case phase.endTurn:
		mapPhase = phase.startTurn;
	break;
	
	case phase.endRound:
		global.round += 1;
		mapPhase = phase.init;
	break;
}