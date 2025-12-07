class_name GameResource extends Node

# This class is responsible for housing a value
signal increased(m:float)
signal decreased(m:float)
signal currency_changed(currentM: float)

@export var value : float = 10 
var current_amount : float;

## The Multipliers that will apply to this resource
@export var multipliers : Array[GameResource]

func _ready() -> void:
	current_amount = value

## Adds to the Value
func increase(amount: float) -> void:
	current_amount += amount 
	increased.emit(amount)

func decrease(amount: float) -> void:
	current_amount -= amount
	decreased.emit(amount)
	currency_changed.emit(current_amount)

func set_value(newValue: float) -> void:
	value = newValue
	current_amount = value
	currency_changed.emit(current_amount)
