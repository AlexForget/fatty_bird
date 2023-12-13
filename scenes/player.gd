extends CharacterBody2D

const JUMP_VELOCITY = -350.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	$AnimationPlayer.play("falling")

func _physics_process(delta):
	if rotation_degrees <= -10:
		$AnimationPlayer.play("falling")
		
	if not is_on_floor():
		velocity.y += (gravity * delta)

	if Input.is_action_just_pressed("jump"):
		$AnimationPlayer.stop()
		rotation_degrees = -10
		velocity.y = JUMP_VELOCITY
	move_and_slide()
