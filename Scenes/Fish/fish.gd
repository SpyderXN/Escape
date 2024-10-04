extends CharacterBody2D

@export var speed: int

func _process(_delta):
	
	var direction = Input.get_vector("left","right","up","down")
	
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_pressed("left"):
		$Sprite2D.flip_h = true
	
	if Input.is_action_pressed("right"):
		$Sprite2D.flip_h = false
	
	if position.x <= 145 or position.x >= 1000 or position.y <= 66 or position.y >= 550:
		TransitionLayer.change_scene("res://Scenes/EndScene/end_scene.tscn")
