extends Node2D

@onready var icon = $Bubble
var Mouse
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#icon.global_position = icon.get_global_mouse_position()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Mouse = get_local_mouse_position()
	rotation += Mouse.angle()
	icon.global_position = icon.get_global_mouse_position()
	
