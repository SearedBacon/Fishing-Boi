extends Node3D

@onready var shop: CanvasLayer = $Shop
@onready var clown_fih: Node3D = $ClownFih

func _process(delta: float) -> void:
	if Globals.fish_caught==1:
		clown_fih.visible=true
	else:
		clown_fih.visible=false
	clown_fih.rotate_y(.025)
	
func _on_area_3d_body_entered(body: Node3D) -> void:
	if body is Player:
		shop.visible=true
		Globals.speed=0
		Globals.yes_turn=false


func _on_fishing_area_body_entered(body: Node3D) -> void:
	if body is Player:
		Globals.can_fish=true


func _on_fishing_area_body_exited(body: Node3D) -> void:
	if body is Player:
		Globals.can_fish=false
