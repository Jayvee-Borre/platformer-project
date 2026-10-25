class_name PlayerFallState
extends PlayerState

func enter() -> void:
    var character = state_machine.get_parent()
    var sprite : AnimatedSprite2D = getSprite()
    if not character.is_on_floor():
        if sprite.animation != "jump":
            sprite.play("jump")
            sprite.frame = 3

func physics_update(delta : float) -> void:
    var character = state_machine.get_parent()
    var direction = Input.get_axis("move_left", "move_right")


    if character.is_on_floor():
        if direction == 0:
            state_machine.change_state("playeridlestate")
        else:
            state_machine.change_state("playerwalkstate")
        return

    character.velocity += character.get_gravity() * delta
    character.velocity.x = direction * movement_speed
    character.move_and_slide()

func handle_input(event: InputEvent) -> void:
    if Input.is_action_just_pressed("attack"):
        state_machine.change_state("playerattackstate")