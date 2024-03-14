extends Node

signal pistol_signal
signal backpack_signal
var collected_notes_count := 0

# Function to increment note count
func increment_note_count():
	collected_notes_count += 1
	print(collected_notes_count)

# Function to reset note count
func reset_note_count():
	collected_notes_count = 0
	print(collected_notes_count)

func pistol_end():
	emit_signal("pistol_signal")

func backpack_end():
	emit_signal("backpack_signal")
