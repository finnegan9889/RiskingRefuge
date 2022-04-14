/// @description Confirm Allocation
space = Facility.capacity - Facility.refugeeCount;

if(space > 0){
	if(ResourceTracker.totalRefugees > Facility.capacity){ //not enough space for all refugees
		Facility.refugeeCount += Facility.capacity;
		ResourceTracker.totalRefugees -= Facility.capacity;
	}else{
		Facility.refugeeCount += ResourceTracker.totalRefugees;
		ResourceTracker.totalRefugees = 0;
	}
}