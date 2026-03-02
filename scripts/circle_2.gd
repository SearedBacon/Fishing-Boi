extends Node3D
@onready var lights: MeshInstance3D = $lights
@onready var lights_2: MeshInstance3D = $lights2
@onready var lights_3: MeshInstance3D = $lights3
@onready var lights_4: MeshInstance3D = $lights4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	lights.rotate_z(.025)
	lights_2.rotate_z(.025)
	lights_3.rotate_z(.025)
	lights_4.rotate_z(.025)
