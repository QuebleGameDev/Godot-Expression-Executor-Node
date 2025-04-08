@icon("res://addons/expression_executor/icon.png")
extends Node
class_name ExpressionExecutor

@export var execute_on_ready: bool = true
@export_custom(PROPERTY_HINT_EXPRESSION, "") var my_expression: String
@export var custom_inputs: Dictionary[String, Variant]

var expression = Expression.new()

func _ready() -> void:
	if execute_on_ready:
		execute_expression(custom_inputs)

func execute_expression(inputs: Dictionary) -> void:
	var error = expression.parse(my_expression, inputs.keys())
	if error != OK:
		print("Expression parse error: ", expression.get_error_text())
		return
	var result = expression.execute(inputs.values(), self)
	if expression.has_execute_failed():
		print("Expression failed: ", expression.get_error_text())
	else:
		print("Expression result: ", result)