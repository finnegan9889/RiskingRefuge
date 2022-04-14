/// @description Confirm Allocation
if(ResourceTracker.shelterSups >= Facility.shelterReq){
	ResourceTracker.shelterSups -= Facility.shelterReq;
}