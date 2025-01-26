extends Area2D

@export var speed: float = 700.0
@export var direction: Vector2 = Vector2.ZERO
var push_force = 70.0

func _ready():
	# More explicit connection
	body_entered.connect(_on_body_entered)

func _process(delta: float):
	# Movement based on rotation
	var direction = -Vector2(cos(rotation), sin(rotation)).normalized()
	position += direction * speed * delta

func _on_body_entered(body):
	print("Collision detected with: ", body.name, " Type: ", body.get_class())
	
	if body is RigidBody2D and body.is_in_group("bubbles"):
		var push_direction = (body.global_position - global_position).normalized()
		body.apply_central_impulse(push_direction * push_force)
		queue_free()
	
	if body is TileMap:
		var tile_pos = body.local_to_map(body.to_local(global_position))
		var has_collision = body.get_cell_collision_layer_value(0, tile_pos)
		
		print("TileMap collision at: ", tile_pos)
		print("Has physics collision: ", has_collision)
		
		if has_collision:
			queue_free()
