extends Control
@export var target_text_control : LineEdit

func _ready() -> void:
	for button : TextureButton in get_tree().get_nodes_in_group("LetterButtons"):
		button.pressed.connect(_on_letter_button_pressed.bind(button))	

func _on_letter_button_pressed(button : TextureButton):
	target_text_control.text += button.name;		

func _on_space_pressed() -> void:
	target_text_control.text += " ";

func _on_delete_pressed() -> void:
	var current_text_length = target_text_control.text.length()
	if (current_text_length > 0):
		target_text_control.text = target_text_control.text.substr(0, current_text_length - 1)
