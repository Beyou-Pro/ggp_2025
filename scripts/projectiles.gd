extends Node2D

@onready var bubblebody = get_node("../Player/BubbleBody")

var cursor_position
var angle_to_bubble

signal laser(pos, angle)

func _process(_delta: float) -> void:
	cursor_position = get_global_mouse_position()
	angle_to_bubble = bubblebody.position.angle_to_point(cursor_position)
	
	if Input.is_action_pressed("Shoot"):
		laser.emit(cursor_position, angle_to_bubble)
