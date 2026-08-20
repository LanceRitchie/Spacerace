extends Area2D

var finished = 0

var first = 0
var second = 0

func _on_body_entered(body):		
	if body.name == "Player1":
		if first == 2:
			second = 1
		else:
			first = 1
	if body.name == "Player2":
		if first == 1:
			second = 2
		else:
			first = 2
	finished += 1

	if finished >= 2:
		GameData.first = first
		GameData.second = second
		get_tree().change_scene_to_file("res://node_2d.tscn")
		print (GameData.first, GameData.second)
