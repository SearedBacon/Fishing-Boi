extends CanvasLayer

@onready var fih_screen: CanvasLayer = $"."

func _on_close_pressed() -> void:
	fih_screen.visible=false
	Globals.fish_caught=0
	Globals.speed=15
	Globals.yes_turn=true
