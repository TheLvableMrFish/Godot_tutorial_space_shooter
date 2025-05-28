extends CharacterBody2D

@export var SPEED: int = 500
# SPEED := 500 shorthand

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(100, 500)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var direction = Input.get_vector("left", "right", "up", "down")
	##get_node("PlayerImage").rotation += 0.1 * delta
	##$PlayerImage.rotation += 0.2 * delta
	#position += direction * SPEED * delta 
	velocity = direction * SPEED
	move_and_slide()
	
	
