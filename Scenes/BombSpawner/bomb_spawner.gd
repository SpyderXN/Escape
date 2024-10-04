extends Node2D

var bomb = preload("res://Scenes/Bomb/bomb.tscn")

var can_spawn = true

func _process(_delta):
	if(can_spawn):
		can_spawn = false
		var bomb_scene = bomb.instantiate() as Area2D
		bomb_scene.position.x = randf_range(210, 884)
		$Timer.start()
		$FoodSpawns.add_child(bomb_scene)

func _on_timer_timeout():
	can_spawn = true
