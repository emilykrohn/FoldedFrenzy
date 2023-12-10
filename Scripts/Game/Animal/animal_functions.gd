extends Node

func _on_spawn_cooldown_timeout():
	$%AnimalTakeDamage.spawn_cooldown = true
