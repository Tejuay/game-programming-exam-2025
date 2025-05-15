extends CharacterBody2D

var speed = 400
var angular_speed = PI
@export var lives:int = 100



func _process(delta):
	var direction = 0

	rotation += angular_speed * direction * delta

	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		velocity = Vector2.UP * speed
	if Input.is_action_pressed("move_down"):
		velocity = Vector2.DOWN * speed
	if Input.is_action_pressed("move_left"):
		velocity = Vector2.LEFT * speed
	if Input.is_action_pressed("move_right"):
		velocity = Vector2.RIGHT * speed
		

	position += velocity * delta
