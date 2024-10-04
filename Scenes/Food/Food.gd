extends Area2D

var direction = Vector2.DOWN

@export var speed = 10

func _process(delta):
	
	position += direction * speed * delta 
	
	if(position.y >= 800):
		queue_free()


func _on_body_entered(body):
	if(body.name == "Fish"):
		Globals.add_score(1)
		$EatSound.play()
		await get_tree().create_timer(0.15).timeout
		queue_free()
		


