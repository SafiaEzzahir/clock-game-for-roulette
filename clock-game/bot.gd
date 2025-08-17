extends CharacterBody2D

var speed = 4

var current_pos = Vector2(6.0, 1.0)

func _on_movebody(postomoveto):
	var allowed_pos = generate_allowed_list()
	if Vector2(postomoveto) in allowed_pos:
		var index = allowed_pos.find(Vector2(postomoveto))
		move_based_on_pos(index, Vector2(postomoveto))

func generate_allowed_list():
	var l = []
	l.append(Vector2(current_pos.x+1,current_pos.y))
	l.append(Vector2(current_pos.x,current_pos.y+1))
	l.append(Vector2(current_pos.x-1,current_pos.y))
	l.append(Vector2(current_pos.x,current_pos.y-1))
	return l

func move_based_on_pos(index, newpos):
	if index == 0:
		self.position = Vector2(self.position.x+96, self.position.y+48)
		current_pos = newpos
	elif index == 1:
		self.position = Vector2(self.position.x-96, self.position.y+48)
		current_pos = newpos
	elif index == 2:
		self.position = Vector2(self.position.x-96, self.position.y-48)
		current_pos = newpos
	elif index == 3:
		self.position = Vector2(self.position.x+96, self.position.y-48)
		current_pos = newpos
