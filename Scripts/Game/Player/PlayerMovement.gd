extends Node


func movement(speed):
	var horizontal_direction = Input.get_axis("ui_left", "ui_right")
	var vertical_direction = Input.get_axis("ui_up", "ui_down")
	
	if horizontal_direction or vertical_direction:
		get_parent().velocity = Vector2(horizontal_direction, vertical_direction).normalized() * speed
	else:
		get_parent().velocity = Vector2.ZERO
