extends Node

var characters = []

var character = preload("res://scenes/Character.tscn")
var earth = preload("res://radicals/earth.tres")
var empty = preload("res://radicals/empty.tres")

func _ready():
	createCharacter("earth", [earth, empty, empty, empty])
	createCharacter("stone", [earth, earth, earth, earth])
	createCharacter("empty", [empty, empty, empty, empty])
	
func getCharacter(charName):
	for charInstance in characters:
		if charInstance.name == charName:
			return charInstance
	return null

func createCharacter(charName, radicals):
	var charInstance = character.instantiate()
	add_child(charInstance)
	charInstance.set_visible(false)
	charInstance.name = charName
	if charInstance.has_method("init"):
		charInstance.init(radicals)
	characters.append(charInstance)
	
func addGuess(charName, guess):
	getCharacter(charName).guess = guess
	getCharacter(charName).tooltip_text = guess
	
func updateGuesses():
	for char in characters:
		char.updateGuesses()

func displayCharacter(charName, x, y):
	getCharacter(charName).position = Vector2(x, y)
	getCharacter(charName).visible = true
