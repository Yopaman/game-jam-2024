extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if get_parent_node_3d().is_in_group("ours"):
		get_parent_node_3d().attack()
	if body.is_in_group("player"):
		body.on_Obstacle_hit()
