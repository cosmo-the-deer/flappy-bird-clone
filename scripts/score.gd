extends Node

@onready var label: Label = $Label

var score = 0
var first_time: bool

func _ready() -> void:
	first_time = true

func _on_timer_timeout() -> void:
	if not first_time:
		score += 1
		label.text = str(score)
	first_time = false
