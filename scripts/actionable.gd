extends Area3D


@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "level1dialogue"


var dialogue_visible = false

func action() -> void:
	if dialogue_visible:
		DialogueManager.get_next_dialogue_line(dialogue_resource)
	else:
		DialogueManager.show_dialogue_balloon(dialogue_resource, dialogue_start)
		dialogue_visible = true
