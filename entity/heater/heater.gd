extends RigidBody2D

func _ready():
	Field.add(self, $Mask)

func _process(delta):
	pass