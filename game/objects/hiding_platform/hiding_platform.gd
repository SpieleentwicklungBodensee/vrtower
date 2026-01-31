extends StaticBody3D

var counter: float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	counter += delta
	
	var phase = int(counter) % 8
	
	if phase < 1:
		self.flicker()
	elif phase < 4:
		self.doHide()
	elif phase == 4:
		self.flicker()
	else:
		self.doShow()

func flicker() -> void:
	var visible = int(counter * 10) % 2
	if visible:
		self.show()
	else:
		self.hide()
		
func doHide():
	$CollisionShape3D.disabled = true
	self.hide()
	
func doShow():
	$CollisionShape3D.disabled = false
	self.show()
