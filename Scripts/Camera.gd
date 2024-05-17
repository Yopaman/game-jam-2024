extends Camera3D

@export var player: Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	global_transform.origin.z = player.global_position.z + 3
	global_transform.origin.x = player.global_position.x

