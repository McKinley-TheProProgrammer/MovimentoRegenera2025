class_name ClickerButton extends Control

signal on_clicked

@export var resources_to_increase : Array[GameResource]

@onready var texture_button: TextureButton = $TextureButton

var current_increase_value = 1;

func _on_texture_button_pressed() -> void:
	for res in resources_to_increase:
		res.increase(current_increase_value)
	on_clicked.emit()
	
