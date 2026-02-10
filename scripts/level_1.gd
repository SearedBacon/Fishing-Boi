extends Node3D

@onready var upgrade_shop: CanvasLayer = $UpgradeShop

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body is Player:
		upgrade_shop.visible=true
		Globals.speed=0
