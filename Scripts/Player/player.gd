class_name Player
extends CharacterBody2D

@onready
var sprite = $sprite

func _physics_process(delta: float) -> void:
	var direction = Input.get_axis("move_left", "move_right")

	if not is_on_floor():
		if sprite.animation != "jump":
			print("Jump is active")
			sprite.play("jump")
	else:
		if direction == 0:
			sprite.play("idle")
		else:
			sprite.play("run")

	if velocity.x > 0:
		sprite.flip_h = false
	elif velocity.x < 0:
		sprite.flip_h = true