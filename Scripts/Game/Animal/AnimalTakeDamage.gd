extends Node

@onready var animated_sprite_2d = $"../../AnimatedSprite2D"

var health := 2
var can_be_damaged := false
var spawn_cooldown := false
var can_die := false
var damage_cooldown := true
var original_modulate

func _ready():
	original_modulate = animated_sprite_2d.get_modulate()

func _process(_delta):
	if health <= 0:
		$"../../".queue_free()
	if can_be_damaged and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and damage_cooldown and spawn_cooldown and can_die:
		animated_sprite_2d.modulate = Color(1,0,0)
		health -= 1
		can_die = false
		damage_cooldown = false

func _on_modulate_cooldown_timeout():
	animated_sprite_2d.modulate = original_modulate
	can_die = true

func _on_damage_cooldown_timeout():
	damage_cooldown = true

func _on_spawn_cooldown_timeout():
	spawn_cooldown = true
