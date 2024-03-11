extends Control

@onready var button_audio = $ButtonAudio

func _on_restart_pressed():
	get_tree().change_scene_to_file("res://scenes/level1.tscn")
	Engine.time_scale = 1


func _on_quit_pressed():
	get_tree().quit()


func _on_restart_mouse_entered():
	button_audio.play()


func _on_quit_mouse_entered():
	button_audio.play()
