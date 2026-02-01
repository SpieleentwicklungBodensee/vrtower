class_name VRTowerNodeManager
extends Node

func disable_node(node: Node3D) -> void:
	if not is_instance_valid(node):
		return

	node.process_mode = Node.PROCESS_MODE_DISABLED
	node.visible = false

func enable_node(node: Node3D) -> void:
	if not is_instance_valid(node):
		return

	node.process_mode = Node.PROCESS_MODE_INHERIT
	node.visible = true