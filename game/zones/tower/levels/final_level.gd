extends Node3D

@export var levelsToRemove: Array[Node3D]

var p1: Node3D
var p2: Node3D
var buttonObject: Node3D

func _ready() -> void:
	p1 = $P1
	p2 = $P2
	buttonObject = $Button
		
func _on_button_pressed() -> void:
	VrTowerNodeManager.disable_node(p1)
	VrTowerNodeManager.disable_node(p2)
	VrTowerNodeManager.disable_node(buttonObject)
	
	for level in levelsToRemove:
		VrTowerNodeManager.disable_node(level)

