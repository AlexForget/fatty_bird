extends CharacterBody2D

var speed: int = 200


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	velocity = Vector2.LEFT * speed
	move_and_slide()

