extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	$water.get_surface_override_material(0).set_shader_parameter("albedo",Vector3(1,0,0))
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
