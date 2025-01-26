extends Sprite2D

@onready var icon = $icon
@onready var bubblebody = get_parent().get_node("Bubble/RigidBody2D")

func _process(_delta: float) -> void:
	var cursor_position = get_global_mouse_position()
	global_position = cursor_position

	var bubble_center = bubblebody.position
	var angle_bubble = bubble_center.angle_to_point(global_position)
	rotation = angle_bubble + -PI / 4
