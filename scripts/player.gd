extends CharacterBody3D
class_name Player

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = Globals.jump

	if Globals.yes_turn==true:
		if Input.is_action_pressed("move_left"):
			rotate_y(.05)
		if Input.is_action_pressed("move_right"):
			rotate_y(-.05)
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * Globals.speed
		velocity.z = direction.z * Globals.speed
	else:
		velocity.x = move_toward(velocity.x, 0, Globals.speed)
		velocity.z = move_toward(velocity.z, 0, Globals.speed)

	move_and_slide()
