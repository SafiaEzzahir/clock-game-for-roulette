extends TileMapLayer

signal movebody

func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var p = local_to_map(to_local(event.position))
			#var data = get_custom_data_by_layer_id(0)
			movebody.emit(p)
