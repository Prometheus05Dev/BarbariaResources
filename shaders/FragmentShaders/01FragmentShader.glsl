#version 450 core

out vec4 fragmentColor;

uniform sampler2D gameTexture;

in vec2 vTexture;

void main() {
    fragmentColor = texture(gameTexture, vTexture);
}

