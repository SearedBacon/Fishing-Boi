extends CanvasLayer

@onready var upgrade_shop: CanvasLayer = $"."
@onready var money_u_have: Label = $MoneyUHave

func _physics_process(delta: float) -> void:
	money_u_have.text="Money: "+str(Globals.actual_money)

func _on_reel_speed_button_pressed() -> void:
	if Globals.money>=150:
		Globals.money-=150
		if Globals.wait_time>0:
			Globals.wait_time-=.25

func _on_luck_button_pressed() -> void:
	if Globals.money>=100:
		Globals.money-=100
		if Globals.luck_minimum<90:
			Globals.luck_minimum+=5

func _on_close_button_pressed() -> void:
	upgrade_shop.visible=false
	Globals.speed=15
	Globals.yes_turn=true

func _on_sell_button_pressed() -> void:
	Globals.actual_money+=Globals.money
	Globals.money=0
