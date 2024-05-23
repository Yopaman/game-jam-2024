extends "res://Scripts/Obstacle.gd"

func _ready():
	var nbr := randi() % 20
	if nbr < 2:
		$AnimatedSprite3D.hide()
		$ours_bleu.show()
		$ours_bleu.play()

func attack():
	$AnimatedSprite3D.play("attack")

func _on_zone_collision_body_entered(body):
	super._on_zone_collision_body_entered(body)
	attack()
