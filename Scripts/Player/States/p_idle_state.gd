class_name PlayerIdleState
extends PlayerState

func enter() -> void:
	super()

func physics_update(delta : float) -> void:
	var character = state_machine.get_parent()
	var direction = Input.get_axis("move_left", "move_right")

	if direction:
		state_machine.change_state("playerwalkstate")

	if not character.is_on_floor():
		state_machine.change_state("playerfallstate")
		

func handle_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("jump"):
		state_machine.change_state("playerjumpstate")