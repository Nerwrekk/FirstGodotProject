extends Control

export var text = ""

var words = ["Fork", "Spoon", "Spork"]
var story = "Once every full moon a %s finds a %s and mates. 6 months later a %s is born"

onready var display_text = $VBoxContainer/DisplayText
onready var player_input = $VBoxContainer/PlayerInput


# Called when the node enters the scene tree for the first time.
func _ready():
	display_text.text = story % words

func update_DisplayText(new_text):
	display_text.text = player_input.text;
	player_input.clear()

func _on_PlayerInput_text_entered(new_text):
	update_DisplayText(new_text)
	
