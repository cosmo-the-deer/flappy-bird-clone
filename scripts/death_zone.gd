extends Area2D

# gets access to the bird to use is comparison
@onready var bird: CharacterBody2D = %Bird



# handles the death
func _on_body_entered(body: Node2D) -> void:
	if body == bird:
		print("bird died")
		get_tree().reload_current_scene() # change to call death func
