extends RigidBody2D

export(float, 0.0, 1.0) var heat = 0.042

func _ready():
	Field.add(self, $Mask)

func _process(delta):
	pass