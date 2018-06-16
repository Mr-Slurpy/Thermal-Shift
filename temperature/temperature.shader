shader_type canvas_item;
render_mode unshaded;

// It's possible to have dynamic conduction by making the conduction texture
// another viewport and rendering shapes there but ehh
uniform sampler2D conduction : hint_white;
uniform float delta;

void fragment(){
	//ivec2 size = textureSize(SCREEN_TEXTURE, 0);
	vec3 center = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0).rgb;
	vec3 up     = textureLod(SCREEN_TEXTURE, SCREEN_UV + vec2(0, SCREEN_PIXEL_SIZE.y), 0).rgb;
	vec3 left   = textureLod(SCREEN_TEXTURE, SCREEN_UV + vec2(-SCREEN_PIXEL_SIZE.x, 0), 0).rgb;
	vec3 right  = textureLod(SCREEN_TEXTURE, SCREEN_UV + vec2(SCREEN_PIXEL_SIZE.x, 0), 0).rgb;
	vec3 down   = textureLod(SCREEN_TEXTURE, SCREEN_UV + vec2(0, -SCREEN_PIXEL_SIZE.y), 0).rgb;
	
	float conduct = texture(conduction, SCREEN_UV).r;
	
	float heat = (center.r * (1.0 - conduct) + (up.r + left.r + right.r + down.r) * conduct) * 0.25;
	
	COLOR = vec4(heat, 0, 0, 1);
}