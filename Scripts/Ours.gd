extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var nbr := randi() % 20
	if nbr < 2:
		$AnimatedSprite3D.hide()
		$ours_bleu.show()
		$ours_bleu.play()

func attack():
	$AnimatedSprite3D.play("attack")
