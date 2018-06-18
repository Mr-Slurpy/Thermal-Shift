extends Node

# This is the size of a field unit in pixels
const FIELD_TO_WORLD = 16.0
const WORLD_TO_FIELD = 1.0 / FIELD_TO_WORLD

var field

var data

func _process(delta):
	data = field.get_texture().get_data()

func add(entity, data):
	data.get_parent().remove_child(data)
	var parent = preload("res://entity/mask.gd").new()
	parent.master_node = entity
	parent.add_child(data)
	field.add_child(parent)
	field.move_child(parent, 0)

func get_temperature(position):
	position *= WORLD_TO_FIELD
	#print(str(x) + ", " + str(y))
	return float(data.data["data"][(int(position.y) * data.get_width() + int(position.x)) * 4]) / 255.0

func get_wind(position):
	position *= WORLD_TO_FIELD
	var wind = Vector2(
		data.data["data"][(int(position.y) * data.get_width() + int(position.x)) * 4 + 1],
		data.data["data"][(int(position.y) * data.get_width() + int(position.x)) * 4 + 2]
	)
	wind /= 127.5
	wind -= 1.0
	return wind