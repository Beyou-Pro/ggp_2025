extends Area2D

@export var speed: float = 1000.0
@export var direction: Vector2 = Vector2.ZERO

func _process(delta: float):
	direction = -Vector2(cos(rotation), sin(rotation)).normalized()

	if direction != Vector2.ZERO:
		# print("Projectile ID: ", get_instance_id(), " | Position: ", position)
		position += direction.normalized() * speed * delta

func _on_area_entered(_area: Area2D) -> void:
	queue_free()
