extends Node2D
var shoot = false

signal laser

func _ready() -> void:
	pass # Replace with function body.


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Shoot"):
		laser.emit()
