extends Node

var LeftDown = Vector2(-1,1)
var LeftUp = Vector2(-1,-1)
var RightDown = Vector2(1, 1)
var RightUp = Vector2(1,-1)

var player_direction := "LeftDown"
var direction = LeftDown
var has_set_direction := false

const SPEED := 50

var possible_directions = {
	"LeftDown": [LeftDown, LeftUp, RightDown],
	"LeftUp": [LeftUp, LeftDown, RightUp],
	"RightDown": [RightDown, RightUp, LeftDown],
	"RightUp": [RightUp, RightDown, LeftUp]
}

func movement(delta):
	if has_set_direction == false:
		player_direction = $"../../Player/PlayerMovement".direction
		direction = possible_directions[player_direction][randi() % 3]
		has_set_direction = true
	get_parent().position += direction.normalized() * SPEED * delta

func get_direction():
	if direction == LeftDown:
		return "LeftDown"
	elif direction == LeftUp:
		return "LeftUp"
	elif direction == RightDown:
		return "RightDown"
	else:
		return "RightUp"
