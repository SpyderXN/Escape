extends Node2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("Menu"):
		TransitionLayer.change_scene("res://Scenes/Menu/menu.tscn")
