extends MeshInstance3D
class_name Bobber

func _process(delta: float) -> void:
	if Input.is_action_pressed("FISH")and Globals.can_fish==true:
		pass
