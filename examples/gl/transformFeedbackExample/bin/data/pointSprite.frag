#version 300 es

precision lowp float;

out vec4 FRAGCOLOR;

//-- coming from the vert shader ---- //
in vec4 oColor;
// ---------------------------------- //

void main(){
	FRAGCOLOR = oColor;
}
