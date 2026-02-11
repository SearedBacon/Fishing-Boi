extends Node3D

@onready var seat: CSGBox3D = $Seat

func _on_sit_down_body_entered(body: Node3D) -> void:
	if body is Player:
		body.global_position=seat.global_position
		body.rotation=Vector3(0,-190,0)
		Globals.yes_turn=false
		Globals.speed=0
		Globals.can_fish=true

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("exit_chair"):
		Globals.speed=15
		Globals.yes_turn=true
