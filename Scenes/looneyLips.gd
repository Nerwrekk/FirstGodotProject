extends Control

export var text = ""

var words = ["Fork", "Spoon", "Spork"]
var story = "Once every full moon. %s turns into an %s then searches for %s until their hunger is satisfied"

var playerWords = []
var storyArray = ["Hello! welcome to Looney Lips were gonna tell a story but i need your help. Can you please give me a name: ",
				 "Give me an animal.",
				 "Give me an food type"]

var fullStory = ""

onready var display_text = $VBoxContainer/DisplayText
onready var player_input = $VBoxContainer/HBoxContainer/PlayerInput


# Called when the node enters the scene tree for the first time.
func _ready():
	display_text.text = storyArray[playerWords.size()]

func update_DisplayText(new_text):
	add_word_from_player(new_text)
	if not check_if_story_complete():
		display_text.text = storyArray[playerWords.size()]
	else:
		fullStory = story % playerWords
		display_text.text = fullStory

func check_if_story_complete():
	if playerWords.size() == storyArray.size():
		return true
	
	return false

func add_word_from_player(text):
	if not check_if_story_complete():
		playerWords.append(text)
		player_input.clear()

func _on_PlayerInput_text_entered(new_text):
	update_DisplayText(new_text)
	

func _on_EnterButton_pressed():
	if not check_if_empty():
		_on_PlayerInput_text_entered(player_input.text)


func check_if_empty():
	if str(player_input.text).empty():
		return true
		
	return false
