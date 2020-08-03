extends Control

onready var label = $Label
export var text = ""
var words = ["Fork", "Spoon", "Spork"]
var story = "Once every full moon a %s finds a %s and mates. 6 months later a %s is born"

# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = story % words

