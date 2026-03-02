extends Node3D
@onready var light: MeshInstance3D = $light
@onready var light_2: MeshInstance3D = $light2
@onready var light_3: MeshInstance3D = $light3
@onready var light_4: MeshInstance3D = $light4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	light.rotate_z(.025)
	light_2.rotate_z(.025)
	light_3.rotate_z(.025)
	light_4.rotate_z(.025)
