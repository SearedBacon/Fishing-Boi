extends Node3D
@onready var lightss: MeshInstance3D = $lightss
@onready var lightss_2: MeshInstance3D = $lightss2
@onready var lightss_3: MeshInstance3D = $lightss3
@onready var lightss_4: MeshInstance3D = $lightss4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	lightss.rotate_z(.025)
	lightss_2.rotate_z(.025)
	lightss_3.rotate_z(.025)
	lightss_4.rotate_z(.025)
