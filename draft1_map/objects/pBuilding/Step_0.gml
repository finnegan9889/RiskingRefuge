switch(state){
	case INIT:
		
	break;
	
	case NEXT:
		current[LEVEL] = current[@ LEVEL];
		current[RESOURCE] = current[@ RESOURCE];
		turnFinished = true;
		state = INIT;
	break;
	
	case UPGRAD:
		if (global.totalResource == 0) {
			current[LEVEL] = current[@ LEVEL];
			current[RESOURCE] = current[@ RESOURCE];
		} else {
			current[LEVEL] = current[@ LEVEL] + 1;
			current[RESOURCE] = current[@ RESOURCE] + 1;
			global.totalResource -= 1;
		}
		turnFinished = true;
		state = INIT;
	break;
}
