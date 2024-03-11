extends Area3D

# Export variable for the scene to change to
@export var scene_to_load: String
@onready var door_sound: AudioStreamPlayer = $Door_sound

func action() -> void:
	# Load the next scene and change to it
	load_next_scene()

func load_next_scene() -> void:
	# Check if the scene_to_load is valid
	if scene_to_load == "":
		push_error("No scene to load specified.")
		return
	
	door_sound.play()
	$Timer.start()

func _on_timer_timeout():
	get_tree().change_scene_to_file(scene_to_load)
