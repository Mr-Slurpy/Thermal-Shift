extends Node2D

var master_node

func _ready():
	pass

func _process(delta):
	var master_pos = master_node.global_position
	position = master_pos * Field.WORLD_TO_FIELD