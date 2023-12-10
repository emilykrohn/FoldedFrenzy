extends Node

@onready var animated_sprite_2d = $"../AnimatedSprite2D"

func play_animation(direction):
	animated_sprite_2d.play("Run" + $%AnimalMovement.get_direction())
