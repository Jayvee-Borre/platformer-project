class_name PlayerMoveComponent
extends Node

func get_movement_component() -> float:
	return Input.get_axis("move_left","move_right")
	
func get_jump_component() -> bool:
	return Input.is_action_just_pressed("jump")
