class_name PlayerState
extends State

static var jump_vel : float = -400.0
static var movement_speed : float = 300

func enter() -> void:
	print("[Player State]: Entering state ", self.name)

func getSprite() -> AnimatedSprite2D:
	for child in state_machine.get_parent().get_children():
		if child is AnimatedSprite2D: 
			return child

	return
