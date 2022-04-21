/// @definition- Setup init vals for obj properties

//Setup Init Properties

//vars and default vals which affect movement of obj
walkSpeed = 2;
dir = 1;//0=left,1=right
vx = 0;
vy = 0;
detectTimer = 2;// 2 second timer before hunt after detection
shootTimer  = 1;// 1 second timer for sprite to stop and shoot
//moveDirection variables only function as intended if = 0 or 1
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
// Detection vars
detectDistanceMax = 100;
detectDistanceMin = 40;
//booleans updated in other classes which determine sprite behavior
detectedPlayer = false;
shooting = false;
beginSearch = false;
onPath = false;

