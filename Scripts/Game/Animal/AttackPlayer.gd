extends Node

const SPEED := 40

func attack(delta):
	var player_position = $"../../Player".global_position
	$"../".position += (player_position - $"../".position).normalized() * SPEED * delta
