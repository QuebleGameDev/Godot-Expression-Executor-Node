@tool
@icon("res://addons/expression_executor/icon.svg")
extends Node
class_name ExpressionExecutor

@export var execute_on_ready: bool = true
@export_tool_button("Execute Now", "HFlowContainer") var tool_button_action = execute_expression
@export_custom(PROPERTY_HINT_EXPRESSION, "") var my_expression: String
@export var inputs: Dictionary[String, Variant]

var expression = Expression.new()

func _ready() -> void:
	if execute_on_ready and not Engine.is_editor_hint():
		execute_expression()

func execute_expression() -> void:
	var error = expression.parse(my_expression, inputs.keys())
	if error != OK:
		print("Expression parse error: ", expression.get_error_text())
		return
	var result = expression.execute(inputs.values(), self)
	if expression.has_execute_failed():
		print("Expression failed: ", expression.get_error_text())
	else:
		print("Expression result: ", result)