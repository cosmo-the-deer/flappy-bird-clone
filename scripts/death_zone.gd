extends Area2D

# gets access to the bird to use is comparison
@onready var bird: CharacterBody2D = %Bird



# handles the death
func _on_body_entered(body: Node2D) -> void:
	print("body entered")
	if body == get_tree().get_first_node_in_group("bird"):
		print("bird died")
		get_tree().reload_current_scene() # change to call death func
