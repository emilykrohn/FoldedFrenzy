extends Area2D

func _process(delta):
	$%AnimalMovement.movement(delta)
	$%PlayAnimalAnimation.play_animation()
