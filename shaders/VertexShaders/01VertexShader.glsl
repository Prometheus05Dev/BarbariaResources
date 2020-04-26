#version 450 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexture;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

out vec2 vTexture;

void main() {
    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(aPos.x, aPos.y, aPos.z, 1.0);
    vTexture = aTexture;
}

