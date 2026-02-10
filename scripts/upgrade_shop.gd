extends CanvasLayer

@onready var upgrade_shop: CanvasLayer = $"."

func _on_depth_buton_pressed() -> void:
	pass

func _on_reel_speed_button_pressed() -> void:
	pass

func _on_luck_button_pressed() -> void:
	pass

func _on_close_button_pressed() -> void:
	upgrade_shop.visible=false
	Globals.speed=15
