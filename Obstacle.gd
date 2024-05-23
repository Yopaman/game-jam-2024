extends "res://Scripts/Obstacle.gd"

var triggered := false

func _physics_process(delta):
	if triggered:
		$ObstacleArea.position.x -= 0.1

func _on_zone_trigger_body_entered(body):
	if body.is_in_group("player"):
		triggered = true
