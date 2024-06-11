extends RichTextLabel

var characters = []

func _ready():
	bbcode_enabled = true

func add_character(character):
	characters.append(character)
	add_child(character)

func display_text(text):
	clear()
	for char in text:
		if char.is_custom_language():
			var custom_char = create_character_from_text(char)
			add_character(custom_char)
		else:
			append_bbcode("[font=default]" + char + "[/font]")
