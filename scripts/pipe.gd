extends Node2D  

# gets access to the bird to use is comparison
@onready var bird: CharacterBody2D = %Bird

const pipe_speed := 100.0

func _init():
	position.x = 300
	position.y = randi_range(-100, 100)
	print(position)

func _physics_process(delta: float) -> void:
	position.x -= pipe_speed * delta  


func _on_body_entered(body: Node2D) -> void:
	print("body enterd")
	if body == bird:
		print("bird died")
		get_tree().reload_current_scene() # change to call death func
