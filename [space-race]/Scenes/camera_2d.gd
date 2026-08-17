extends Camera2D

var Player1
var Player2

func _ready():
	Player1 = get_parent().get_node("Player1")
	Player2 = get_parent().get_node("Player2")


	var distance = Player1.global_position.distance_to(Player2.global_position)

	# The further apart they are, the smaller the zoom gets
	var zoom_amount = clamp(1500.0 / distance, 0.3, 1.0)

	zoom = Vector2(zoom_amount, zoom_amount)

func _process(delta):
	if Player1 != null and Player2 != null:
		var midpoint = (Player1.global_position + Player2.global_position) / 2
		global_position = midpoint

	elif Player1 != null:
		global_position = Player1.global_position

	elif Player2 != null:
		global_position = Player2.global_position
