extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("body_entered", Callable(self, "_on_rigidbody_collision"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_rigidbody_collision(body):
	if body is RigidBody2D:
		if body.is_in_group("bubbles"):
			get_tree().quit()
			
