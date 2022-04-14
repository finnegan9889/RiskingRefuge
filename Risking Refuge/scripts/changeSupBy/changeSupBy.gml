// Script to be used in any code that wants to change global values for any of the 3 supplies
// sup - 0: food, 1: meds, 2: shelter
// amount - positive to add, negative to subtract, zero to hold supply total value
function changeSupBy(sup, amount){
	if (sup > 2 || sup < 0) {
		throw("Unable to change amount of supplies: 'sup' parameter must be a value 0-2.");
	}
	switch (sup) {
		case 0:
			global.foodSups += amount;
			break;
		case 1:
			global.medSups += amount;
			break;
		case 2:
			global.shelterSups += amount;
			break;
	}
}
