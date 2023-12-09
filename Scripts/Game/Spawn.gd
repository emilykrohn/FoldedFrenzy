extends Node

func spawn_stag(stag_scene):
	var stag = stag_scene.instantiate()
	stag.position = get_parent().position
	$"../../".add_child(stag)
