extends RichTextLabel

@export var resource_to_display : GameResource

@export var prefix : String
@export var sufix : String

func _process(delta: float) -> void:
	text = prefix + str(resource_to_display.current_amount) + sufix
