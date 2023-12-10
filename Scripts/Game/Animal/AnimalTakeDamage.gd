extends Node

@onready var animated_sprite_2d = $"../AnimatedSprite2D"

var can_be_damaged := false

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		can_be_damaged = true
	
func _on_area_2d_body_exited(body):
	if body.name == "Player":
		can_be_damaged = false

func _process(_delta):
	if can_be_damaged and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		animated_sprite_2d.modulate = Color(1,0,0)
