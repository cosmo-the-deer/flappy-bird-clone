extends Node



func _on_timer_timeout() -> void:
	var pipe = load("res://scenes/pipe.tscn")
	var instance = pipe.instantiate()
	add_child(instance)
