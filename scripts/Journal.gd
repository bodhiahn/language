extends Window

var entry = preload("res://scenes/JournalEntry.tscn")
@onready var entries = $PanelContainer/MarginContainer/Entries
@onready var pageNumber = $PanelContainer/MarginContainer/PageNumber
var page = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	addEntry("earth")
	addEntry("stone")

func addEntry(charName):
	var newEntry = entry.instantiate()
	entries.add_child(newEntry)
	newEntry.initialize(charName)
	

func _on_margin_container_gui_input(event):
	pass # Replace with function body.


func _on_close_requested():
	hide()
