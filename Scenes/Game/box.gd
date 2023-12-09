extends StaticBody2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_SPACE) and $%EnteredRange.in_range:
		queue_free()

