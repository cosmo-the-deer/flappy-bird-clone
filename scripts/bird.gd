extends CharacterBody2D

# gets access to the sprite to rotate when jumping
@onready var sprite: AnimatedSprite2D = $Sprite2D

#consts for the gravity and such
const jump_power := 400.0
const gravity := 20.0
const terminal_velocity := 800.0
const jump_rotate_speed := 5

# this is where most the code happens
func _physics_process(delta: float) -> void:
	
	# handles rotating the bird sprite
	if velocity.y > 0:
		sprite.rotation += jump_rotate_speed
	else:
		sprite.rotation -= jump_rotate_speed
	sprite.rotation = clamp(sprite.rotation, -0.5, 0.5)
	
	# jump
	if Input.is_action_just_pressed("jump"):
		velocity.y = 0 - jump_power
	
	# deals to gravity
	velocity.y += gravity
	velocity.y = clamp(velocity.y, -2000, terminal_velocity)
	
	move_and_slide()
