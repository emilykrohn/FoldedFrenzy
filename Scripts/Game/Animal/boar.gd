extends Area2D

var is_attacking := false
var in_range := false

func _process(delta):
	if not is_attacking:
		$AnimalFunctions/AnimalMovement.movement(delta)
		$AnimalFunctions/PlayAnimalAnimation.play_animation()
	else:
		$AttackPlayer.attack(delta)

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		$AnimalFunctions/AnimalTakeDamage.can_be_damaged = true
		$"../Player".is_boar = true
	
func _on_area_2d_body_exited(body):
	if body.name == "Player":
		$AnimalFunctions/AnimalTakeDamage.can_be_damaged = false
		$"../Player".is_boar = false

func _on_spawn_cooldown_timeout():
	is_attacking = true
