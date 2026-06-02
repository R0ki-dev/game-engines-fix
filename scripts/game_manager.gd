extends Node

var score = 0
@onready var hud: CanvasLayer = $Hud

func add_point():
	score += 1
	hud.add_point()

func end_game():
	return
