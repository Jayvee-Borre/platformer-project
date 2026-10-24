class_name PlayerIdleState
extends PlayerState

func enter() -> void:
	print("Entering Idle State")
	pass
	
func exit() -> void:
	pass

func update(delta : float) -> void:
	pass
	
func physics_update(delta : float) -> void:
	var character = state_machine.get_parent()
	if not character.is_on_floor():
		print("Not on Floor")
	
	
func handle_input(event: InputEvent) -> void:
	if getMoveComponent() != 0:
		state_machine.change_state("playerwalkstate")