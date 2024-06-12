extends PanelContainer

var line = preload("res://scenes/Line.tscn")
@onready var lines = $MarginContainer/Lines
@onready var title = $MarginContainer/Lines/Title
var sentence = []
var dragging = false
var drag_start_position = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func setTitle(titleName):
	title.text = titleName
func setWords(words):
	sentence = words
	for word in words:
		var newLine = line.instantiate()
		lines.add_child(newLine)
		newLine.writeLine(word, Characters.getCharacter(word).guess)


func _on_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				# Check if the mouse is over the object (optional: add your own collision check)
				dragging = true
				drag_start_position = event.position
			else:
				dragging = false
	elif event is InputEventMouseMotion and dragging:
		# Use relative motion to move the object
		position += event.relative
	

