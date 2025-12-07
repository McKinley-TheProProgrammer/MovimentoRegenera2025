extends Node

@export var questions_in_order : Array[QuestionPrompt]

var current_question : QuestionPrompt
var currentIndex : int = -1

func _ready() -> void:
	current_question = questions_in_order[0] 
	for question in questions_in_order:
		question.user_prompt.text_submitted.connect(next_question)

func next_question() -> void:
	var initial_pos = current_question.global_position
		
	var move_question_tween = create_tween()
	move_question_tween.tween_property(current_question,"global_position",Vector2(0,-500),.5)
	await move_question_tween.finished
	currentIndex += 1
	current_question = questions_in_order[currentIndex]
	move_question_tween.tween_property(current_question,"global_position",Vector2.ZERO,.5)
	
	
