extends CanvasLayer

const CHAR_READ_RATE = 0.05

@onready var label = $TextboxContainer/MarginContainer/RichTextLabel
@onready var textboxContainer = $TextboxContainer

var text_queue = []

func _ready():
	hideTextbox()
	queue_text("Hey you must be the new linguist")
	queue_text("Lemme show you around a bit")
	queue_text("You've really got your work cut out for you")
	queue_text("Lets get to it")
	display_text()
	
#func _process(_delta):
	#if Input.is_action_just_pressed("ui_accept"):
		#display_text()

func queue_text(next_text):
	text_queue.push_back(next_text)

func hideTextbox():
	label.text = ""
	textboxContainer.hide()
	
func showTextbox():
	textboxContainer.show()
	
func display_text():
	var next_text = text_queue.pop_front()
	label.text = next_text
	showTextbox()
