extends Node2D

@onready var pipes_node = get_node("PipeSpawn")
var pipe_scene: PackedScene = preload("res://scenes/pipe.tscn")

func _ready():
	var new_pipe = pipe_scene.instantiate()
	new_pipe.global_position = Vector2(900, randi_range(-230, 120))
	pipes_node.add_child(new_pipe)

func _on_pipe_end_body_entered(body):
	body.queue_free()

func _on_pipe_spawn_timeout():
	var new_pipe = pipe_scene.instantiate()
	new_pipe.global_position = Vector2(900, randi_range(-230, 120))
	pipes_node.add_child(new_pipe)


# plus haut -210
# plus bas 110
