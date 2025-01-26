extends Node2D
var shoot = false

signal laser

func _ready() -> void:
	pass # Replace with function body.


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Shoot"):
		laser.emit()


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			shoot = true
			print("projectile_on")
		elif event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			shoot = false
			print("projectile_off")
	
