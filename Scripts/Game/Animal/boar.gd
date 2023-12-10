extends Area2D

var is_attacking := false

func _process(delta):
	if not is_attacking:
		$AnimalFunctions/AnimalMovement.movement(delta)
	else:
		$AttackPlayer.attack(delta)
	$AnimalFunctions/PlayAnimalAnimation.play_animation()

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		$AnimalFunctions/AnimalTakeDamage.can_be_damaged = true
	
func _on_area_2d_body_exited(body):
	if body.name == "Player":
		$AnimalFunctions/AnimalTakeDamage.can_be_damaged = false


func _on_spawn_cooldown_timeout():
	is_attacking = true
