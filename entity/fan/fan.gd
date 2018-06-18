extends RigidBody2D

export(float, 0) var distance

func _ready():
	Field.add(self, $Mask)
