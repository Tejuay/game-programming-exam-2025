extends CharacterBody2D

const SPEED = 200
@onready var is_reloading = false
@onready var shooty_part = $ShootyPart

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())

	velocity.x = Input.get_axis("left", "right") * SPEED
	velocity.y = Input.get_axis("up", "down") * SPEED
	velocity = lerp(get_real_velocity(), velocity, 0.1)
