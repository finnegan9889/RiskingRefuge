/// @description When player character collides with crate, supplies inside added to global total
// uses changeSupBy script which has params sup and amount which are number values

// handle supply val changes
if (collected == false) {
changeSupBy(supType, amount); 
collected = true;
}
// handle destruction or sprite change of crate
//TODO

