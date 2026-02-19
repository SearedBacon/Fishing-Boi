extends CharacterBody3D
class_name Player

@onready var fishing_effect: GPUParticles3D = $FishingEffect
@onready var line: MeshInstance3D = $Line
@onready var bobber: MeshInstance3D = $Bobber
@onready var fih_screen: CanvasLayer = $"../FihScreen"

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
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized(
	)
	
	if direction:
		velocity.x = direction.x * Globals.speed
		velocity.z = direction.z * Globals.speed
	else:
		velocity.x = move_toward(velocity.x, 0, Globals.speed)
		velocity.z = move_toward(velocity.z, 0, Globals.speed)
	
	if Input.is_action_just_pressed("exit_chair") or Input.is_action_just_pressed("ui_accept"):
		bobber.visible=false
		line.visible=false
		fishing_effect.visible=false
		
	if Globals.catch==true and Input.is_action_just_pressed("FISH"):
		Globals.money+=100
		bobber.visible=false
		line.visible=false
		fishing_effect.visible=false
		Globals.catch=false
		fih_screen.visible=true
		Globals.can_fish=false
		Globals.fish_caught=1
		await get_tree().create_timer(3).timeout
		Globals.can_fish=true
		
		
	if Globals.can_fish==true and Input.is_action_just_pressed("FISH") and Globals.fish_caught==0:
		Globals.speed=0
		Globals.yes_turn=false
		bobber.visible=true
		line.visible=true
		await get_tree().create_timer(Globals.wait_time).timeout
		fishing_effect.visible=true
		Globals.catch=true
	
	
	move_and_slide()
