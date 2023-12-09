extends CharacterBody2D




func _physics_process(_delta):
	$%PlayerMovement.movement(100)

	move_and_slide()
