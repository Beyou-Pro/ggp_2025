extends RigidBody2D

var speed = 250.0

func _ready():
	linear_velocity = Vector2(-200, -200).normalized() * speed

func _integrate_forces(state):
	if state.contact_count > 0:
		for i in range(state.contact_count):
			var collision_normal = state.get_contact_normal(i)
			linear_velocity = linear_velocity.bounce(collision_normal)
