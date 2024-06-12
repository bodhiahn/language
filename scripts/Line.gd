extends HBoxContainer

@onready var character = $Character
@onready var label = $Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func writeLine(charName, note):
	character.init(Characters.getCharacter(charName).radicals)
	character.name = charName
	label.text = note
	
func updateNote():
	var note = Characters.getCharacter(character.name).guess
	if note != "":
		label.text = note
	else:
		label.text = ""
