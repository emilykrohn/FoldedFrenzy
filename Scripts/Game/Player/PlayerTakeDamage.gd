extends Node

var health := 4
var damage_cooldown := true
var in_range := false
var is_alive := true

func damage():
	if in_range and damage_cooldown:
		health -= 1
		damage_cooldown = false
		$"../../Control2/Label".set_text("Health: " + str(health))
	if health <= 0:
		is_alive = false

func is_in_range():
	if abs($"../../Boar".position.x - $"../".position.x) < 5 and abs($"../../Boar".position.y - $"../".position.y) < 5:
		in_range = true
	else:
		in_range =  false

func _on_damage_cooldown_timeout():
	damage_cooldown = true
