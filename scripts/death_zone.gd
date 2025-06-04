extends Area2D

# gets access to the bird to use is comparison
@onready var bird: CharacterBody2D = get_tree().get_first_node_in_group("bird")
@onready var die: AudioStreamPlayer2D = $Die
@onready var hit: AudioStreamPlayer2D = $Hit



# handles the death
func _on_body_entered(body: Node2D) -> void:
	print("body entered")
	if body == get_tree().get_first_node_in_group("bird") and bird.can_interact:
		print("bird died")
		
		body.can_interact = false
		hit.play()
		die.play()
		await get_tree().create_timer(1.0).timeout
		get_tree().reload_current_scene() # change to call death func
