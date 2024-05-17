extends RigidBody3D

@export var float_force := 1.0
@export var water_drag := 0.05
@export var water_angular_drag := 0.05

@export var lane_index := 0

@onready var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")

var submerged := false

const water_height := 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Camera3D
	
func _physics_process(delta):
	submerged = false
	global_position.z += -0.05
	var depth := water_height - global_position.y
	if depth > 0:
		submerged = true
		apply_central_force(Vector3.UP * float_force * gravity * depth)

func _integrate_forces(state: PhysicsDirectBodyState3D):
	if submerged:
		state.linear_velocity *=  1 - water_drag
		#state.angular_velocity *= 1 - water_angular_drag 
