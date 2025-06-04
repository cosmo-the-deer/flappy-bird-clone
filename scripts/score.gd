extends Node

@onready var label: Label = $Label

var score = 0

func _on_timer_timeout() -> void:
	score += 1
	label.text = str(score)
