extends CharacterBody2D


@export var SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var player = $Sprite2D
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var attack =  false

func _physics_process(delta):
	# Add the gravity.
	if Input.is_action_just_pressed("LIGHT ATTACK"):
		attack = true
	
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if attack == false:
		if direction:
			player.play("RUN")
			velocity.x = direction * SPEED
		else:
			player.play("idle")
			velocity.x = move_toward(velocity.x, 0, SPEED)
	
		if Input.is_action_just_pressed("ui_left"):
			player.flip_h = true
		if Input.is_action_just_pressed("ui_right"):
			player.flip_h = false
	else:
		attack1()

	move_and_slide()
func attack1():
	if attack == true:
		player.play("ATTACK_1")
		return
		attack = false
#check ths godot code and fix the issue i am having it keeps playing the attack animation whn i press the button
