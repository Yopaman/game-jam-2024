extends Node3D
@export var texture: int = 0
@export var animation: StringName = "default";

# Called when the node enters the scene tree for the first time.
func _ready():
	$ObstacleArea/AnimatedSprite3D.play(animation)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
