/// @description Follows selected object

x += (xTo-x)/8;
y += (yTo-y)/8;

if(follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, vm);
