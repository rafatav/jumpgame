extends Node

var score = 0
@onready var score_label = $ScoreLabel

func add_score():
	score += 1 
	score_label.text = "Você coletou " + str(score) + " moedas de 10"
