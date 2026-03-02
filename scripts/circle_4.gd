extends Node3D
@onready var lightsss: MeshInstance3D = $lightsss
@onready var lightsss_2: MeshInstance3D = $lightsss2
@onready var lightsss_3: MeshInstance3D = $lightsss3
@onready var lightsss_4: MeshInstance3D = $lightsss4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	lightsss.rotate_z(.025)
	lightsss_2.rotate_z(.025)
	lightsss_3.rotate_z(.025)
	lightsss_4.rotate_z(.025)
