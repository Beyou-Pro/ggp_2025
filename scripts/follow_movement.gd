extends Node2D

@onready var cursor = $Cursor
@onready var bubble = $Bubble

var Mouse
var bubble_center
var angle_bubble


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#icon.global_position = icon.get_global_mouse_position()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Mouse = get_local_mouse_position()
	bubble_center = bubble.global_position + bubble.offset
	angle_bubble = bubble_center.angle_to_point(cursor.global_position)
	rotation = angle_bubble
	cursor.global_position = cursor.get_global_mouse_position()
	#bubble.position = Vector2.ZERO
	bubble.rotation = -rotation

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			bubble.global_position += Vector2(10,0)
			print(bubble.position)
	
	
	
