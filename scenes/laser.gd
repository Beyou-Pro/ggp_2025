extends Area2D

var push_force = 80.0

func _on_Laser_body_entered(body):
	if body.is_in_group("bubbles"):
		var push_direction = (body.global_position - global_position).normalized()
		body.apply_central_impulse(push_direction * push_force)
# Called when the node enters the scene tree for the first time.
