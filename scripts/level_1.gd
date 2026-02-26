extends Node3D

@onready var shop: CanvasLayer = $Shop
@onready var clown_fih: Node3D = $ClownFih
@onready var kingfish: Node3D = $Kingfish
@onready var goldfish: Node3D = $Goldfish
@onready var circle: Node3D = $Circle
@onready var salmon: Node3D = $Salmon
@onready var shark: Node3D = $Shark
@onready var trout: Node3D = $Trout
@onready var milkfish: Node3D = $Milkfish

func _process(delta: float) -> void:
	if Globals.fish_caught==1:
		if Globals.random<=50:
			var new=randf_range(0,100)
			if new>50:
				goldfish.visible=true
			if new<=50:
				clown_fih.visible=true
		if Globals.random<=75 and Globals.random>50:
			var new=randf_range(0,100)
			if new>50:
				trout.visible=true
			if new<=50:
				salmon.visible=true
		if Globals.random<=90 and Globals.random>75:
			kingfish.visible=true
		if Globals.random<=97.5 and Globals.random>90:
			shark.visible=true
		if Globals.random>97.5:
			milkfish.visible=true
		circle.visible=true
	else:
		milkfish.visible=false
		circle.visible=false
		clown_fih.visible=false
		goldfish.visible=false
		kingfish.visible=false
		salmon.visible=false
		trout.visible=false
		shark.visible=false
	
	clown_fih.rotate_y(.025)
	kingfish.rotate_y(.025)
	goldfish.rotate_y(.025)
	salmon.rotate_y(.025)
	shark.rotate_y(.025)
	trout.rotate_y(.025)
	milkfish.rotate_y(.025)

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
