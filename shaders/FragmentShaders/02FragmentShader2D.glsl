#version 450 core

out vec4 fragmentColor;

uniform sampler2D gameTexture;

in vec2 vTexture;

void main() {
    vec4 textured = texture(gameTexture, vTexture);
    if(textured.a < 0.1)
        discard;
    fragmentColor = textured;
}
