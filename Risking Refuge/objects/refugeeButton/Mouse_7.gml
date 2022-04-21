/// @description Confirm Allocation
space = Facility.capacity - Facility.refugeeCount;

if(space > 0){
	if(global.totalRefugees > Facility.capacity){ //not enough space for all refugees
		Facility.refugeeCount += Facility.capacity;
		global.totalRefugees -= Facility.capacity;
	}else{
		Facility.refugeeCount += global.totalRefugees;
		global.totalRefugees = 0;
	}
}