extends Node

func _on_button_main_scene_pressed() -> void:
	PersistentStaging.instance.load_scene("res://game/start_scene/start_scene.tscn")
