extends Sprite2D


func _process(_delta: float) -> void:
	global_position = get_parent().cursor_position
	rotation = get_parent().angle_to_bubble + -PI / 4
