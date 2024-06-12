# Main.gd
extends Node2D

var journal = preload("res://scenes/Journal.tscn").instantiate()
var textbox = preload("res://scenes/textbox.tscn").instantiate()
var paper = preload("res://scenes/paper.tscn").instantiate()

func _ready():
	createWords()
	add_child(journal)
	add_child(textbox)
	add_child(paper)
	paper.setTitle("Paper Title")
	paper.setWords(["earth", "empty", "earth"])

func createWords():
	Characters.displayCharacter("earth", 500, 500)
