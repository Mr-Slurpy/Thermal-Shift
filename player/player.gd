extends RigidBody2D

const speed = 10000.0

func _ready():
	pass

func _physics_process(delta):
	var move = Vector2()
	if Input.is_key_pressed(KEY_W):
		move.y -= speed * delta
	if Input.is_key_pressed(KEY_A):
		move.x -= speed * delta
	if Input.is_key_pressed(KEY_S):
		move.y += speed * delta
	if Input.is_key_pressed(KEY_D):
		move.x += speed * delta
	
	linear_velocity = move