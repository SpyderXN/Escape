extends Node

var food_collected: int

var food_points: int = 0

func add_score(value):
	food_collected = food_points + value
	food_points = food_collected
	print(food_points)

func reset_score():
	food_points = 0
