extends Node3D
class_name button

signal pressed

@export var cooldown := 0.25
@export var press_depth := 0.115
@export var press_time := 0.06

@onready var red_button: Node3D = $RedButton

var _ready_time := 0.0
var _red_button_start_pos: Vector3

func _ready() -> void:
	_red_button_start_pos = red_button.position
	
func press() -> void:
	try_press()

func try_press() -> void:
	var now := Time.get_ticks_msec() / 1000.0
	if now < _ready_time:
		return
	_ready_time = now + cooldown

	emit_signal("pressed")

	# Simple animation (jam-friendly)
	_animate_press()

func _animate_press() -> void:
	red_button.position = _red_button_start_pos + Vector3(0, -press_depth, 0)
	var t := get_tree().create_timer(press_time)
	t.timeout.connect(func():
		red_button.position = _red_button_start_pos
	)
