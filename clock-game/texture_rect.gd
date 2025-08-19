extends TextureRect

var pink_texture = preload("res://pink.png")
var blue_texture = preload("res://blue.png")
var black_texture = preload("res://black.png")
var purple_texture = preload("res://purple.png")

func _on_main_col_changed(col) -> void:
	if col == "pink":
		texture = pink_texture
	elif col == "blue":
		texture = blue_texture
	elif col == "black":
		texture = black_texture
	elif col == "purple":
		texture = purple_texture
