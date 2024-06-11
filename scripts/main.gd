# Main.gd
extends Node2D

var characters = preload("res://scenes/Characters.tscn").instantiate()
var journal = preload("res://scenes/Journal.tscn").instantiate()
var textbox = preload("res://scenes/textbox.tscn").instantiate()

func _ready():
	create_example_words()
	add_child(journal)
	add_child(textbox)
	

func create_example_words():
	add_child(characters)
	var earth_character = characters.getCharacter("earth")
	if earth_character:
		earth_character.position = Vector2(500, 500)  # Example position
		add_child(earth_character)  # Add the character instance to the scene
