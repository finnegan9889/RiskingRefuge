draw_self();

draw_text(x-64,y-16,string(id)+
", level: "+string(current[@ LEVEL])+
"/resource: "+string(current[@ RESOURCE])+
","+string(turnFinished)
);

if (selected) {
	draw_sprite(indicator1,0,x-16,y+16);
}
