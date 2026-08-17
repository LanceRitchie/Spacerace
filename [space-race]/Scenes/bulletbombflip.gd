extends Area2D

var speed = -200

func _process(delta):
	position.x += speed * delta

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	queue_free()
