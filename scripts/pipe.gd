extends Node2D  

# gets access to the bird to use is comparison
@onready var bird: CharacterBody2D = %Bird

const pipe_speed := 100.0

func _init():
	position.x = 250
	position.y = randi_range(-100, 100)
	print(position)

func _physics_process(delta: float) -> void:
	position.x -= pipe_speed * delta  


func _on_timer_timeout() -> void:
	queue_free()
