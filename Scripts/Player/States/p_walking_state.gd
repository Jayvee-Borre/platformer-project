class_name PlayerWalkState
extends PlayerState


func enter() -> void:
	print("Entering Walking State")
	pass
	
func exit() -> void:
	pass

func update(delta : float) -> void:
	pass
	
func physics_update(delta : float) -> void:
	var character : CharacterBody2D = state_machine.get_parent()
	
	if getMoveComponent():
		character.velocity.x = getMoveComponent() * movement_speed
	else:
		character.velocity.x = move_toward(character.velocity.x, 0, movement_speed)	

	character.move_and_slide()
		
	
func handle_input(event: InputEvent) -> void:
	if getMoveComponent() == 0:
		state_machine.change_state("playeridlestate")
	
