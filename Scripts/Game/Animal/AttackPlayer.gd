extends Node

const SPEED := 40

@onready var animated_sprite_2d = $"../AnimatedSprite2D"

func attack(delta):
	var player_position = $"../../Player".global_position
	animated_sprite_2d.play("Run" + get_direction(player_position, $"../".position))
	$"../".position += (player_position - $"../".position).normalized() * SPEED * delta

func get_direction(player_position, boar_position):
	if player_position.x - boar_position.x <= 0 and player_position.y - boar_position.y <= 0:
		return "LeftUp"
	elif player_position.x - boar_position.x <= 0 and player_position.y - boar_position.y >= 0:
		return "LeftDown"
	elif player_position.x - boar_position.x >= 0 and player_position.y - boar_position.y <= 0:
		return "RightUp"
	else:
		return "RightDown"
