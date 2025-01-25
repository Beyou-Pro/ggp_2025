extends Sprite2D
var Mouse

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Mouse = get_local_mouse_position()
	rotation += Mouse.angle()
	pass
