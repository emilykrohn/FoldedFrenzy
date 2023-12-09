extends Node

var in_range := false

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		in_range = true


func _on_area_2d_body_exited(body):
	if body.name == "Player":
		in_range = false
