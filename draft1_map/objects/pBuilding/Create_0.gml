#macro INIT 0
#macro LEVEL 1
#macro RESOURCE 2
#macro UPGRAD 3
#macro NEXT 4

state = INIT;

base[LEVEL] = 1;
base[RESOURCE] = 1;

current[LEVEL] = base[@ LEVEL];
current[RESOURCE] = base[@ RESOURCE];

turnFinished = false;
selected = false;
