extends Node3D

@export var distance: float = 20.1
@export var speed: float = 4.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var ab: LiftMover = $AnimatableBody3D as LiftMover
	ab.distance = distance
	ab.speed = speed
	ab.update()