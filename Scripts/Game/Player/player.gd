extends CharacterBody2D

func _physics_process(_delta):
	$%PlayerMovement.movement(100)
	if $%PlayerMovement.has_moved:
		$%PlayerAnimation.play_run_animation()
	else:
		$%PlayerAnimation.stop_animation()

	move_and_slide()
