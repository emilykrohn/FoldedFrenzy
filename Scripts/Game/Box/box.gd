extends StaticBody2D

@export var stag_scene: PackedScene
@export var boar_scene: PackedScene

var scenes = []
func _ready():
	scenes.append(stag_scene)
	scenes.append(boar_scene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_key_pressed(KEY_SPACE) and $%EnteredRange.in_range:
		queue_free()
		$%Spawn.spawn_stag(scenes[randi() % scenes.size()])
