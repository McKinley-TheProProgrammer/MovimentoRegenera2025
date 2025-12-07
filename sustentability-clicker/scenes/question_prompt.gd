@tool
class_name QuestionPrompt extends Control

@export var question_id : StringName
@export_multiline var question : String
@export var placeholder_prompt : String

@onready var user_prompt: LineEdit = $UserPrompt
@onready var question_text: RichTextLabel = $QuestionText

func _process(delta: float) -> void:
	if Engine.is_editor_hint():
		user_prompt.placeholder_text = placeholder_prompt
		question_text.text = question

func _on_user_prompt_text_submitted(new_text: String) -> void:
	GlobalStuff.user_prompts[question_id] = new_text
