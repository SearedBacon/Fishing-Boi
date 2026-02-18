extends Node3D

@onready var goto: CSGBox3D = $goto

func _on_sit_down_body_entered(body: Node3D) -> void:
	if body is Player:
		body.global_position=goto.global_position
		body.rotation=Vector3(0,-190,0)
		Globals.yes_turn=false
		Globals.speed=0
		Globals.can_fish=true

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("exit_chair") or Input.is_action_just_pressed("ui_accept"):
		Globals.speed=15
		Globals.yes_turn=true
