extends Control

@onready var status_label: Label = %StatusLabel
@onready var pet_button: Button = $Panel/VBox/PetButton

var greetings: Array[String] = [
	"Mika is happy to see you.",
	"Remember to take a short break.",
	"One small step at a time.",
	"Mika believes in your progress."
]
var greeting_index: int = 0

func _ready() -> void:
	pet_button.pressed.connect(_on_pet_button_pressed)
	status_label.text = "Mika is ready."

func _on_pet_button_pressed() -> void:
	status_label.text = greetings[greeting_index]
	greeting_index = (greeting_index + 1) % greetings.size()
