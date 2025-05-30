extends CharacterBody2D

@export var SPEED: int = 500

signal laser

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(100, 500)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("works??????")
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	move_and_slide()
	
	# Shoot input
	#laser.emit()
	
	
