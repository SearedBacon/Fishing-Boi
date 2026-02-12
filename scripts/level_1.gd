extends Node3D

@onready var shop: CanvasLayer = $Shop

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body is Player:
		shop.visible=true
		Globals.speed=0
		Globals.yes_turn=false
