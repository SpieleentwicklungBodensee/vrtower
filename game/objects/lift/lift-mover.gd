extends AnimatableBody3D

@export var distance: float = 20.3
@export var speed: float = 4.0

# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = create_tween().set_loops()
	# Move up
	tween.tween_property(self, "position:y", position.y + distance, speed).set_trans(Tween.TRANS_SINE)
	
	tween.tween_property(self, "position:y", position.y + distance, speed).set_trans(Tween.TRANS_LINEAR)
	# Move down
	tween.tween_property(self, "position:y", position.y, speed).set_trans(Tween.TRANS_SINE)
	
	tween.tween_property(self, "position:y", position.y, speed).set_trans(Tween.TRANS_LINEAR)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
