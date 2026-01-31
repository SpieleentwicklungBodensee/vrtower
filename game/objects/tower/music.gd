extends Node3D

@onready var player: AudioStreamPlayer = $AudioStreamPlayer

func _ready() -> void:
	player.play_music(preload("res://assets/TheRover.mp3"))

func play_music(stream: AudioStream) -> void:
	if player.stream == stream and player.playing:
		return # läuft schon
	player.stream = stream
	player.play()

func stop_music() -> void:
	player.stop()