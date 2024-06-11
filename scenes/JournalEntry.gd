extends HBoxContainer

var characters = preload("res://scenes/Characters.tscn").instantiate()


func initialize(charName):
	add_child(characters)
	add_child(characters.getCharacter(charName))
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
