extends Node3D

@onready var hazah_light: MeshInstance3D = $HazahLight
@onready var hazah_light_2: MeshInstance3D = $HazahLight2
@onready var hazah_light_3: MeshInstance3D = $HazahLight3
@onready var hazah_light_4: MeshInstance3D = $HazahLight4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	hazah_light.rotate_z(.025)
	hazah_light_2.rotate_z(.025)
	hazah_light_3.rotate_z(.025)
	hazah_light_4.rotate_z(.025)
