extends Node

const FIELD_TO_WORLD = 16.0
const WORLD_TO_FIELD = 1.0 / FIELD_TO_WORLD

var field

func _process(delta):
	pass
	#var data = get_texture().get_data()

func add(entity, data):
	data.get_parent().remove_child(data)
	var parent = preload("res://entity/mask.gd").new()
	parent.master_node = entity
	parent.add_child(data)
	field.add_child(parent)
	field.move_child(parent, 0)