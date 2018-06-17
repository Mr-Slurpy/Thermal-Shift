extends Node

func _enter_tree():
	Field.field = $Field
	$Sprite.scale = Vector2(Field.FIELD_TO_WORLD, Field.FIELD_TO_WORLD)
