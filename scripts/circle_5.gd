extends Node3D
@onready var lightssss: MeshInstance3D = $lightssss
@onready var lightssss_2: MeshInstance3D = $lightssss2
@onready var lightssss_3: MeshInstance3D = $lightssss3
@onready var lightssss_4: MeshInstance3D = $lightssss4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	lightssss.rotate_z(.025)
	lightssss_2.rotate_z(.025)
	lightssss_3.rotate_z(.025)
	lightssss_4.rotate_z(.025)
