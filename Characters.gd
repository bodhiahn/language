extends Node

var characters = []

var character = preload("res://scenes/Character.tscn")
var earth = preload("res://radicals/earth.tres")
var empty = preload("res://radicals/empty.tres")

# Called when the node enters the scene tree for the first time.
func _ready():
	createCharacter("earth", [earth, empty, empty, empty])

func getCharacter(name):
	for charInstance in characters:
		if charInstance.name == name:
			print(name+" found!")
			return charInstance
	print(name+" not found!")
	return null

func createCharacter(name, radicals):
	var charInstance = character.instantiate()
	charInstance.name = name
	if charInstance.has_method("init"):
		print(name+" tried to init")
		charInstance.init(radicals)
	characters.append(charInstance)
