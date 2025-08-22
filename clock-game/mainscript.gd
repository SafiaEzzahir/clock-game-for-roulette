extends Node2D
var next_col = "black"
var timer := 0
var timer_speed := 120
var cols := ["black", "blue", "pink", "purple"]
var cols_index = 0

signal col_changed

func _process(delta: float) -> void:
	if timer == 0:
		_change_col()
	elif timer == timer_speed:
		timer = -1
	
	timer += 1
	_did_you_lose()

func _did_you_lose():
	if $Bot.since_last_movement == 4:
		get_tree().change_scene_to_file("res://lose.tscn")

func _change_col():
	if next_col != cols[cols_index]:
		next_col = cols[cols_index]
		col_changed.emit(next_col)
	cols_index += 1
	if cols_index >= len(cols):
		cols_index = 0
