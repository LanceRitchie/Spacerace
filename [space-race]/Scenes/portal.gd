extends Area2D

var finished = 0

func _on_body_entered(body):
		finished += 1
		if finished >= 2:
			get_tree().change_scene_to_file("res://node_2d.tscn")
