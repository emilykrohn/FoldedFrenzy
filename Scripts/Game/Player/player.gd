extends CharacterBody2D




func _physics_process(delta):
	$%PlayerMovement.movement(100)

	move_and_slide()
