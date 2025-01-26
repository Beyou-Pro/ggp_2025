extends Area2D

@export var speed: float = 400.0
@export var direction: Vector2 = Vector2.ZERO

func _process(delta: float):
	if direction != Vector2.ZERO:
		position += direction.normalized() * speed * delta

func _on_area_entered(_area: Area2D) -> void:
	queue_free()
