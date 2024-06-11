extends HBoxContainer

@onready var character = $Character

func initialize(charName):
	character.init(Characters.getCharacter(charName).radicals)
	character.name = charName

func _on_line_edit_text_changed(new_text):
	if (new_text != ""):
		Characters.addGuess(character.name, new_text)
