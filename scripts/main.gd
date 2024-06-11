# Main.gd
extends Node2D

var journal = preload("res://scenes/Journal.tscn").instantiate()
var textbox = preload("res://scenes/textbox.tscn").instantiate()

func _ready():
	createWords()
	add_child(journal)
	add_child(textbox)
	

func createWords():
	Characters.displayCharacter("earth", 500, 500)
