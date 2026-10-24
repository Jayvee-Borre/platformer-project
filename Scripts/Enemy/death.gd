extends CharacterBody2D

@export var SPEED = 300.0
@export var awake: = false

func _ready() -> void:
	print(self)
	pass

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	
	
	move_and_slide()


func _on_hitbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("sword"):
		print("Hit")


func _on_sprite_animation_finished() -> void:
	if $sprite.animation == "wakeup":
		awake = true
		
