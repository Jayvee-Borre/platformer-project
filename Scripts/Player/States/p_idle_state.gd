class_name PlayerIdleState
extends PlayerState

func physics_update(delta : float) -> void:
	var character = state_machine.get_parent()
	var direction = Input.get_axis("move_left", "move_right")
	var sprite = getSprite()


	if direction:
		state_machine.change_state("playerwalkstate")
	else:
		sprite.play("idle")

	if not character.is_on_floor():
		state_machine.change_state("playerfallstate")
		

func handle_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("jump"):
		state_machine.change_state("playerjumpstate")
	elif Input.is_action_just_pressed("attack"):
		state_machine.change_state("playerattackstate")