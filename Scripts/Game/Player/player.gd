extends CharacterBody2D

var is_boar := false

func _physics_process(_delta):
	if $%PlayerTakeDamage.is_alive:
		$%PlayerMovement.movement(100)
		if is_boar:
			$%PlayerTakeDamage.is_in_range()
			$%PlayerTakeDamage.damage()
		if $%PlayerMovement.has_moved:
			$%PlayerAnimation.play_run_animation()
		else:
			$%PlayerAnimation.stop_animation()

	move_and_slide()

