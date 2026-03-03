extends CanvasLayer

@onready var fih_screen: CanvasLayer = $"."

func _on_close_pressed() -> void:
	fih_screen.visible=false
	Globals.fish_caught=0
	Globals.speed=15
	Globals.yes_turn=true
	Globals.circle_be_gone=1
	if Globals.random<=50:
		Globals.money+=25
	if Globals.random<=75 and Globals.random>50:
		Globals.money+=50
	if Globals.random<=90 and Globals.random>75:
		Globals.money+=75
	if Globals.random<=97.5 and Globals.random>90:
		Globals.money+=100
	if Globals.random>97.5:
		Globals.money+=150
