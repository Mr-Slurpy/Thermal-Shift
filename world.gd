extends Node

func _enter_tree():
	Field.field = $Field
	$Sprite.scale = Vector2(Field.FIELD_TO_WORLD, Field.FIELD_TO_WORLD)

func _ready():
	var level = preload("res://level/tutorial/tutorial.tscn").instance()
	add_child(level)
	move_child(level, 0)

func new_world(world):
	pass