extends Node

func _enter_tree():
	Field.field = $Field
	$Sprite.scale = Vector2(Field.FIELD_TO_WORLD, Field.FIELD_TO_WORLD)

func _ready():
	var level = preload("res://level/tutorial/tutorial.tscn").instance()
	$Field.size = Vector2(level.width, level.height) * 32.0 * Field.WORLD_TO_FIELD
	$Field.render_target_clear_mode = Viewport.CLEAR_MODE_ONLY_NEXT_FRAME
	add_child(level)
	move_child(level, 0)

func new_world(world):
	pass