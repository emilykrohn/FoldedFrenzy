extends Node

var horizontal_direction
var vertical_direction

func movement(speed):
	horizontal_direction = Input.get_axis("ui_left", "ui_right")
	vertical_direction = Input.get_axis("ui_up", "ui_down")
	
	if horizontal_direction or vertical_direction:
		get_parent().velocity = Vector2(horizontal_direction, vertical_direction).normalized() * speed
	else:
		get_parent().velocity = Vector2.ZERO

func get_direction():
	if horizontal_direction > 0:
		return "Right"
	elif horizontal_direction < 0:
		return "Left"
	elif vertical_direction < 0:
		return "Up"
	else:
		return "Down"
