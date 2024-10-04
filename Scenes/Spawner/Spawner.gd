extends Node2D

var food = preload("res://Scenes/Food/food.tscn")

var can_spawn = true

func _process(_delta):
	if(can_spawn):
		can_spawn = false
		var food_scene = food.instantiate() as Area2D
		food_scene.position.x = randf_range(210, 884)
		$Timer.start()
		$FoodSpawns.add_child(food_scene)

func _on_timer_timeout():
	can_spawn = true
