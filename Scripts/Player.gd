extends RigidBody3D

@export var float_force := 1.0
@export var water_drag := 0.05
@export var water_angular_drag := 0.05
@export var lane_index := 1

@onready var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")

var submerged := false
const water_height := 0.0
var lanes_width = 3.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# strafe left or right while animating and changing lane indices
	if Input.is_action_just_pressed("left"):
		switch_lane(-1)
	if Input.is_action_just_pressed("right"):
		switch_lane(1)
	
func _physics_process(delta):
	# lerp the player between lanes
	global_position.x = lerp(global_position.x, (lane_index * lanes_width) - lanes_width, delta * 5.0)
	global_position.x = clamp(global_position.x, -6, 6)

	
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

func on_Obstacle_hit():
	print("test2 ?")
		
func switch_lane(dir):
	lane_index += dir
	if lane_index > 3:
		lane_index = 3
	if lane_index < 0:
		lane_index = 0
