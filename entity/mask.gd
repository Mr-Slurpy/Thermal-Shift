extends Node2D

var master_node

func _ready():
	pass

func _process(delta):
	position = master_node.global_position * Field.WORLD_TO_FIELD
	scale = master_node.scale