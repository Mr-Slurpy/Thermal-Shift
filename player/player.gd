extends RigidBody2D

const SPEED = 200.0
const MAX_HEALTH = 100.0

var health = MAX_HEALTH

func _ready():
	pass

func _physics_process(delta):
	var move = Vector2()
	if Input.is_key_pressed(KEY_W):
		move.y -= SPEED
	if Input.is_key_pressed(KEY_A):
		move.x -= SPEED
	if Input.is_key_pressed(KEY_S):
		move.y += SPEED
	if Input.is_key_pressed(KEY_D):
		move.x += SPEED
	
	linear_velocity = move

func _process(delta):
	var temperature = Field.get_temperature(global_position)
	if temperature >= 0.95:
		health -= 50 * ((temperature - 0.95) * 20.0) * delta
	else:
		health += 50 * delta
	
	if health > MAX_HEALTH:
		health = MAX_HEALTH
	elif health <= 0:
		health = 0
	
	Gui.set_health(health, MAX_HEALTH)