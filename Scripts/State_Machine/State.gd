class_name State
extends Node

var move_component : PlayerMoveComponent = PlayerMoveComponent.new()
var state_machine : StateMachine

func enter() -> void:
	pass

func exit() -> void:
	pass

func update(delta : float) -> void:
	pass
	
func physics_update(delta : float) -> void:
	pass
	
func handle_input(event: InputEvent) -> void:
	pass

func getJumpComponent() -> bool:
	return move_component.get_jump_component()

func getMoveComponent() -> float:
	return move_component.get_movement_component()