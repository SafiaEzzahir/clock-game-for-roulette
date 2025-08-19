extends Node2D

var next_col = "black"
var timer := 0
var timer_speed := 80
var cols := ["black", "blue", "pink", "purple"]
var cols_index = 0

signal col_changed

func _process(delta: float) -> void:
	timer += 1
	if timer == timer_speed:
		timer = 0
		_change_col()

func _change_col():
	if next_col != cols[cols_index]:
		next_col = cols[cols_index]
		col_changed.emit(next_col)
	cols_index += 1
	if cols_index >= len(cols):
		cols_index = 0
