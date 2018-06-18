extends StaticBody2D

const MAX_HEALTH = 100.0

var health = MAX_HEALTH

func _ready():
	pass

func _process(delta):
	var temperature = Field.get_temperature(global_position)
	if temperature >= 0.75:
		health -= 50 * ((temperature - 0.75) * 4.0) * delta
	else:
		health += 50 * delta
	
	if health > MAX_HEALTH:
		health = MAX_HEALTH
	elif health <= 0:
		health = 0
		queue_free()