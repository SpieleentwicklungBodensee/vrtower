class_name LiftMover extends AnimatableBody3D

@export var distance: float = 20.1
@export var speed: float = 4.0

var _tween : Tween

# Called when the node enters the scene tree for the first time.
func _ready():
	update();

func update() -> void:
	# Falls mehrfach aufgerufen: alten Tween killen
	if _tween and _tween.is_running():
		_tween.kill()

	_tween = create_tween().set_loops()

	var y0 := position.y
	var y1 := y0 + distance

	# Up (ease)
	_tween.tween_property(self, "position:y", y1, speed).set_trans(Tween.TRANS_SINE)
	_tween.tween_property(self, "position:y", y1, speed).set_trans(Tween.TRANS_LINEAR)

	# Down (ease)
	_tween.tween_property(self, "position:y", y0, speed).set_trans(Tween.TRANS_SINE)
	_tween.tween_property(self, "position:y", y0, speed).set_trans(Tween.TRANS_LINEAR)