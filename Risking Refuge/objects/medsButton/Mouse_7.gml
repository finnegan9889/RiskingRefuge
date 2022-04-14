/// @description Confirm Allocation
if(ResourceTracker.meds >= Facility.medsReq){
	ResourceTracker.meds -= Facility.medsReq;
}