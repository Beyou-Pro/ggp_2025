extends Area2D

@export var speed: float = 1000.0
@export var direction: Vector2 = Vector2.ZERO
var push_force = 80.0

func _ready():
	connect("body_entered", Callable(self, "_on_rigidbody_collision"))

func _process(delta: float):
	direction = -Vector2(cos(rotation), sin(rotation)).normalized()

	if direction != Vector2.ZERO:
		# print("Projectile ID: ", get_instance_id(), " | Position: ", position)
		position += direction.normalized() * speed * delta

func _on_rigidbody_collision(body):
	if body is RigidBody2D:
		if body.is_in_group("bubbles"):
			var push_direction = (body.global_position - global_position).normalized()
			body.apply_central_impulse(push_direction * push_force)	
			queue_free()
