extends Node2D

@onready var bubble = $Bubble
@onready var redball = $BouleRouge
var Mouse

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#icon.global_position = icon.get_global_mouse_position()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Mouse = get_local_mouse_position()
	rotation += Mouse.angle()
	bubble.global_position = bubble.get_global_mouse_position()
	redball.position = Vector2(2,0)
	
	
