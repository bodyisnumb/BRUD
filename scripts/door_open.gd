extends Area3D

@export var scene_to_load: String
@onready var door_sound: AudioStreamPlayer = $Door_sound

var door_opened = false

func action() -> void:
	if !door_opened:
		door_opened = true
		load_next_scene()

func load_next_scene() -> void:
	if scene_to_load == "":
		push_error("No scene to load specified.")
		return
	
	door_sound.play()
	$Timer.start()

func _on_timer_timeout():
	get_tree().change_scene_to_file(scene_to_load)
