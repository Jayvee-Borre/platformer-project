class_name PlayerJumpState
extends PlayerState

func enter() -> void:
	super()
	var character = state_machine.get_parent()
	character.velocity.y = jump_vel

func physics_update(delta : float) -> void:
	var character = state_machine.get_parent()

	var direction = Input.get_axis("move_left", "move_right")

	character.move_and_slide()
	if character.is_on_floor():
		if direction == 0:
			state_machine.change_state("playeridlestate")
		else:
			state_machine.change_state("playerwalkstate")
	else:
		state_machine.change_state("playerfallstate")
