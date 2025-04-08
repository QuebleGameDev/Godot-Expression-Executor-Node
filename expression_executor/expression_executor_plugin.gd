@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type("ExpressionExecutor", "Node", preload("expression_executor_node.gd"), preload("icon.svg"))

func _exit_tree() -> void:
	remove_custom_type("ExpressionExecutor")
