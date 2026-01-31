extends Node3D

@export var secondsOn: int = 4
@export var secondsOff: int = 4
@export var timeOffset: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$StaticBody3D.secondsOn = secondsOn
	$StaticBody3D.secondsOff = secondsOff
	$StaticBody3D.timeOffset = timeOffset


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
