extends Node3D
class_name Chair

func _on_sit_down_body_entered(body: Node3D) -> void:
	if body is Player:
		pass
