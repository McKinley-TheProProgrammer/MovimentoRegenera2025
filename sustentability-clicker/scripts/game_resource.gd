class_name GameResource extends Node

# This class is responsible for housing a value

@export var value : float = 10

## Adds to the Value
func add(amount: float) -> float:
	var addedValue = value + amount
	value = addedValue
	return addedValue
