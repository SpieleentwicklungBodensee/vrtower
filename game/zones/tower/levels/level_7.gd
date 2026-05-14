extends Node3D

var phase1: Node3D
var phase2: Node3D

var phase1_active : bool = true

func _ready() -> void:
	phase1 = $Phase1
	phase2 = $Phase2
	
	VrTowerNodeManager.disable_node(phase2)
	VrTowerNodeManager.enable_node(phase1)

func _on_button_pressed() -> void:
	if phase1_active:
		VrTowerNodeManager.disable_node(phase1)
		VrTowerNodeManager.enable_node(phase2)
		phase1_active = false
	else:
		VrTowerNodeManager.disable_node(phase2)
		VrTowerNodeManager.enable_node(phase1)
		phase1_active = true

func reset() -> void:
	phase1_active = false
	_on_button_pressed()

func _on_reset_trigger_body_entered(body: Node3D) -> void:
	reset()
