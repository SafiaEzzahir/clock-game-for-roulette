extends TileMapLayer

signal movebody

func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var p = local_to_map(to_local(event.position))
			movebody.emit(p)
