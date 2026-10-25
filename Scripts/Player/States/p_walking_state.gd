class_name PlayerWalkState
extends PlayerState

func physics_update(delta : float) -> void:
	var character = state_machine.get_parent()
	var direction = Input.get_axis("move_left", "move_right")
	var sprite = getSprite()

	if direction == 0:
		state_machine.change_state("playeridlestate")
		return

	if character.is_on_floor():
		sprite.play("run")

	character.velocity.x = direction * movement_speed
	character.move_and_slide()

func handle_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("jump"):
		state_machine.change_state("playerjumpstate")
	elif Input.is_action_just_pressed("attack"):
		state_machine.change_state("playerattackstate")