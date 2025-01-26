extends Node2D

@onready var projectile_scene: PackedScene = preload("res://scenes/projectiles.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func _on_cursor_laser():
	var projectile = projectile_scene.instantiate()
	$Projectiles.add_child(projectile)
	print("shoot")
