extends Node
@onready var scorelbl = $Score

var score = 0

func add_score():
	score += 1
	var str = "score: " + str(score)
	scorelbl.text = str
	print(str)
	
func reset_socre():
	score = 0
	
	
