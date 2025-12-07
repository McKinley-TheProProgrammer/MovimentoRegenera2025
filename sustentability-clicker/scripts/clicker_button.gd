class_name ClickerButton extends Control

signal on_clicked
@export var resource_to_increase : GameResource

func _on_texture_button_pressed() -> void:
	resource_to_increase.increase(1)
	on_clicked.emit()
	
