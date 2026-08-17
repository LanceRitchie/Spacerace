extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var health = 3

func take_damage2():
	health -= 1
	if health <= 0:
		queue_free()

	


func _physics_process(delta: float) -> void:
	# Add the gravity.
	

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("p2_left", "p2_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	var vertical := Input.get_axis("p2_up", "p2_down")
	if vertical:
		velocity.y = vertical * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()

func _on_bulletbomb_1_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()

func _on_bulletbomb_2_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()
	
func _on_bulletbomb_3_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()

func _on_bulletbomb_4_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()
	
func _on_bulletbomb_5_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()
	
func _on_bulletbomb_6_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()

func _on_bulletbomb_7_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()

func _on_bulletbomb_8_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()
	
func _on_bulletbomb_9_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()

func _on_bulletbomb_10_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()
	
func _on_bulletbomb_11_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()
	
func _on_bulletbomb_12_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	take_damage2()

func _on_portal_body_entered(body: Node2D) -> void:
	print("portal entered by, ", body.name, GameData.finish_order)
	body.queue_free()
