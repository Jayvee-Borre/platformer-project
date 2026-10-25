class_name PlayerState
extends State

static var jump_vel : float = -400.0
static var movement_speed : float = 300

func enter() -> void:
	print("[Player State]: Entering state ", self.name)

func getSprite() -> AnimatedSprite2D:
	var parent = state_machine.get_parent()
	for child in parent.get_children():
		if child is AnimatedSprite2D: 
			return child

	return

func getAttackArea() -> Area2D:
	var parent = state_machine.get_parent()
	for child in parent.get_children():
		if child is Area2D:
			return child

	return
