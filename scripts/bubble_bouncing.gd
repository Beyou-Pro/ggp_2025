extends RigidBody2D

var speed = 250.0

func _ready():
	linear_velocity = Vector2(59, 100).normalized() * speed
	add_to_group("bubbles")

func _integrate_forces(state):
	if state.get_contact_count() > 0:
		for i in range(state.get_contact_count()):
			var collision_normal = state.get_contact_local_normal(i)
			linear_velocity = linear_velocity.bounce(collision_normal)
		
