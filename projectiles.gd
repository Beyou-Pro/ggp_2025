extends Node2D
var shoot = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		if shoot  == true:
			print("feu") 
		

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			shoot = true
			print("projectile_on")
		elif event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			shoot = false
			print("projectile_off")
	
