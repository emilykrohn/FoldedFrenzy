extends Area2D

func _process(delta):
	$AnimalFunctions/AnimalMovement.movement(delta)
	$AnimalFunctions/PlayAnimalAnimation.play_animation()

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		$AnimalFunctions/AnimalTakeDamage.can_be_damaged = true
	
func _on_area_2d_body_exited(body):
	if body.name == "Player":
		$AnimalFunctions/AnimalTakeDamage.can_be_damaged = false
