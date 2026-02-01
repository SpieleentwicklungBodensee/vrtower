extends Node3D

@export var nodes_to_disable : Array[Node3D]

func _ready() -> void:
	for node in nodes_to_disable:
			if is_instance_valid(node):
				node.process_mode = Node.PROCESS_MODE_INHERIT
				node.visible = true
				node.set_process_input(true)
				node.set_process_unhandled_input(true)
				node.set_process_unhandled_key_input(true)

func _on_button_pressed() -> void:
	for node in nodes_to_disable:
		if is_instance_valid(node):
			node.process_mode = Node.PROCESS_MODE_DISABLED
			node.visible = false
			node.set_process_input(false)
			node.set_process_unhandled_input(false)
			node.set_process_unhandled_key_input(false)
