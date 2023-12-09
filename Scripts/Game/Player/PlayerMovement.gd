extends Node

var horizontal_direction
var vertical_direction
var has_moved = false
var direction = "LeftDown"

func movement(speed):
	horizontal_direction = Input.get_axis("ui_left", "ui_right")
	vertical_direction = Input.get_axis("ui_up", "ui_down")
	
	if horizontal_direction and vertical_direction:
		get_parent().velocity = Vector2(horizontal_direction, vertical_direction).normalized() * speed
		direction = get_direction()
		has_moved = true
	else:
		get_parent().velocity = Vector2.ZERO
		has_moved = false

func get_direction():
	if horizontal_direction > 0 and vertical_direction > 0:
		return "RightDown"
	elif horizontal_direction > 0 and vertical_direction < 0:
		return "RightUp"
	elif horizontal_direction < 0 and vertical_direction < 0:
		return "LeftUp"
	else:
		return "LeftDown"
