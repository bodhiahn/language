extends Window

var entry = preload("res://scenes/JournalEntry.tscn")
@onready var entries = $PanelContainer/MarginContainer/Entries
# Called when the node enters the scene tree for the first time.
func _ready():
	addEntry("earth")


func addEntry(charName):
	var newEntry = entry.instantiate()
	entries.add_child(newEntry)
	newEntry.initialize("earth")

func _on_margin_container_gui_input(event):
	# add switching pages for clicking on the left or right
	pass # Replace with function body.
