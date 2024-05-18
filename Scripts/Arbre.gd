extends Node3D

var triggered := false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if triggered:
		$Area3D.position.x -= 0.1



func _on_trigger_box_body_entered(body):
	triggered = true
