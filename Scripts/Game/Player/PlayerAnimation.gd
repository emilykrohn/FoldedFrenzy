extends Node

@onready var animated_sprite = $%AnimatedSprite2D

func play_run_animation():
	animated_sprite.play("Run" + $%PlayerMovement.get_direction())
