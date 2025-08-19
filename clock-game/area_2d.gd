extends Area2D

signal colourfound

var bod = ""

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body is TileMapLayer:
		bod = body
			

func _on_tile_map_movebody(p) -> void:
	var newp = Vector2i(p.x-6, p.y)
	var data = bod.get_cell_tile_data(newp)
	if data != null:
		var colour = data.get_custom_data("colour")
		colourfound.emit(p, colour)
