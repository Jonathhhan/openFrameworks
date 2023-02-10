#version 300 es
// fragment shader

precision lowp float;

in vec4 color;
out vec4 outColor;

void main(){
	outColor = color;
}
