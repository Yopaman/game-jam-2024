extends Node3D

func _on_zone_collision_body_entered(body):
	if body.is_in_group("player"):
		body.on_Obstacle_hit()
