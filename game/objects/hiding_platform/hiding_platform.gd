extends StaticBody3D

@export var secondsOn: int = 4
@export var secondsOff: int = 4
@export var timeOffset: int = 0

var counter: float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	counter += delta
	
	var phase = int((counter) + timeOffset) % (secondsOff + secondsOn)
	
	if phase < 1:
		self.flicker()
	elif phase < secondsOff:
		self.doHide()
	elif phase == secondsOff:
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
