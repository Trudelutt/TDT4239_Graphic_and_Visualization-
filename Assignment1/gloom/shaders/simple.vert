#version 430 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec2 vertexUV;
layout(location = 2) in vec3 normal;

out vec2 UV;
out vec3 N;
out vec3 modelposition;
uniform layout(location = 3) mat4x4 MVP;
uniform layout(location = 4) mat4x4 Model;
uniform layout(location = 5) mat4x4 View;


void main()
{
  N = normalize(normal);
	modelposition = position;
	//V = vec4(Model*View*position);
	UV = vertexUV;
    //gl_Position = MVP* vec4(position, 1.0f)*matrix;
	gl_Position = MVP * vec4(position.x, position.y, position.z, 1.0f);

}
