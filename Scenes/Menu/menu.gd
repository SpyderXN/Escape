extends Node2D



func _on_start_pressed():
	TransitionLayer.change_scene("res://Scenes/Main/main.tscn")


func _on_exit_pressed():
	get_tree().quit()
