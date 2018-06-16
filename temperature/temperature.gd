extends Viewport

var capture = false

func _ready():
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	capture = true

func _process(delta):
	if capture:
		var data = get_texture().get_data()
	#var temp = get_texture().get_data()
	#print(temp)
	#temp.lock()
	#print(temp.get_pixel(0, 0))
	#temp.unlock()