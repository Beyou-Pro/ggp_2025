extends Node2D

@onready var projectile_scene: PackedScene = preload("res://scenes/projectiles.tscn")

func _process(_delta: float) -> void:
	pass
	
func _on_cursor_laser(pos, angle):
	var projectile = projectile_scene.instantiate()
	projectile.position = pos
	projectile.rotation = angle
	print(projectile.rotation)
	$Projectiles.add_child(projectile)
