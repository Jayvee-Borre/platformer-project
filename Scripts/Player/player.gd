class_name Player
extends CharacterBody2D

@onready
var sprite = $sprite

func _physics_process(delta: float) -> void:
	if velocity.x > 0:
		sprite.flip_h = false
	elif velocity.x < 0:
		sprite.flip_h = true
		
"""
if not is_on_floor():
		if sprite.animation != "jump":
			print("Jump is active")
			sprite.play("jump")
	else:
		if direction == 0:
			sprite.play("idle")
		else:
			sprite.play("run")
"""