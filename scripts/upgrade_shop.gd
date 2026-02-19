extends CanvasLayer

@onready var upgrade_shop: CanvasLayer = $"."
@onready var money_u_have: Label = $MoneyUHave

func _physics_process(delta: float) -> void:
	money_u_have.text="Money: "+str(Globals.money)
	
func _on_line_strength_buton_pressed() -> void:
	if Globals.money>=100:
		Globals.money-=100
		Globals.wait_time-=.25
	
func _on_reel_speed_button_pressed() -> void:
	if Globals.money>=100:
		Globals.money-=100

func _on_luck_button_pressed() -> void:
	if Globals.money>=100:
		Globals.money-=100

func _on_strength_button_pressed() -> void:
	if Globals.money>=100:
		Globals.money-=100
		Globals.wait_time-=0.5

func _on_close_button_pressed() -> void:
	upgrade_shop.visible=false
	Globals.speed=15
	Globals.yes_turn=true
