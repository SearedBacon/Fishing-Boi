extends Node3D

@onready var shop: CanvasLayer = $Shop
@onready var clown_fih: Node3D = $ClownFih
@onready var kingfish: Node3D = $Kingfish
@onready var goldfish: Node3D = $Goldfish
@onready var salmon: Node3D = $Salmon
@onready var shark: Node3D = $Shark
@onready var trout: Node3D = $Trout
@onready var milkfish: Node3D = $Milkfish
@onready var circle: Node3D = $Circle
@onready var circle_1: Node3D = $Circle1
@onready var circle_2: Node3D = $Circle2
@onready var circle_3: Node3D = $Circle3
@onready var circle_4: Node3D = $Circle4
@onready var circle_5: Node3D = $Circle5

func _process(delta: float) -> void:
	if Globals.fish_caught==1:
		if Globals.random<=50:
			circle.visible=true
			if Globals.which_fish>50:
				goldfish.visible=true
			if Globals.which_fish<=50:
				clown_fih.visible=true
		if Globals.random<=75 and Globals.random>50:
			circle_2.visible=true
			if Globals.which_fish>50:
				trout.visible=true
			if Globals.which_fish<=50:
				salmon.visible=true
		if Globals.random<=90 and Globals.random>75:
			kingfish.visible=true
			circle_3.visible=true
		if Globals.random<=97.5 and Globals.random>90:
			shark.visible=true
			Globals.money+=100
			circle_4.visible=true
		if Globals.random>97.5:
			milkfish.visible=true
			Globals.money+=150
			circle_5.visible=true
	else:
		milkfish.visible=false
		circle.visible=false
		clown_fih.visible=false
		goldfish.visible=false
		kingfish.visible=false
		salmon.visible=false
		trout.visible=false
		shark.visible=false
	if Globals.circle_be_gone==1:
		circle.visible=false
		circle_2.visible=false
		circle_3.visible=false
		circle_4.visible=false
		circle_5.visible=false
	
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
