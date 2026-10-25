class_name PlayerAttackState
extends PlayerState

func enter() -> void:
	var character = state_machine.get_parent()
	var area2d = getAttackArea()
	var sprite = getSprite()
	sprite.animation_finished.connect(on_animation_finish)
	if not character.is_on_floor():
		sprite.play("jump_attack")
	else:
		sprite.play("attack")

	var hitbox : CollisionShape2D = area2d.find_child("attackHitbox")
	hitbox.disabled = false

func exit() -> void:
	var area2d = getAttackArea()
	var hitbox : CollisionShape2D = area2d.find_child("attackHitbox")
	hitbox.disabled = true

func on_animation_finish():
	var sprite = getSprite()
	var character = state_machine.get_parent()
	if sprite.animation in ["attack", "jump_attack"]:
		if character.is_on_floor():
			state_machine.change_state("playeridlestate")
		else:
			state_machine.change_state("playerfallstate")
