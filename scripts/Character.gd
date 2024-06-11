extends AspectRatioContainer
class_name Character

var radicals = []

@onready var majorLeft = $Grid/MajorLeft
@onready var majorRight = $Grid/MajorRight
@onready var minorLeft = $Grid/MinorLeft
@onready var minorRight = $Grid/MinorRight

func init(radicals):
	self.radicals = radicals
	majorLeft.texture = radicals[0].symbol
	majorRight.texture = radicals[1].symbol
	minorLeft.texture = radicals[2].symbol
	minorRight.texture = radicals[3].symbol
