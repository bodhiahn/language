extends AspectRatioContainer
class_name Character

@export var radicals = []
var guess = ""

@onready var majorLeft: TextureRect = $Grid/MajorLeft
@onready var majorRight: TextureRect = $Grid/MajorRight
@onready var minorLeft: TextureRect = $Grid/MinorLeft
@onready var minorRight: TextureRect = $Grid/MinorRight

func init(rads):
	radicals = rads
	majorLeft.set_texture(radicals[0].symbol)
	majorRight.set_texture(radicals[1].symbol)
	minorLeft.set_texture(radicals[2].symbol)
	minorRight.set_texture(radicals[3].symbol)
	
func updateGuesses():
	if majorLeft.guess != "":
		majorLeft.set_tooltip(majorLeft.guess)
	if majorRight.guess != "":
		majorRight.set_tooltip(majorRight.guess)
	if minorLeft.guess != "":
		minorLeft.set_tooltip(minorLeft.guess)
	if minorRight.guess != "":
		minorRight.set_tooltip(minorRight.guess)
	
func _ready():
	pass
