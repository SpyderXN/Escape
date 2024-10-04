extends CanvasLayer

@onready var point_counter = $Label

# Called when the node enters the scene tree for the first time.
func _process(_delta):
	update_score()

func update_score():
	point_counter.text = str(Globals.food_points)
