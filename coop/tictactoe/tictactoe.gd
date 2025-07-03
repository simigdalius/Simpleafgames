extends Node2D

var winner =0
var count = 0

var grammh1 = [0,0,0]
var grammh2 = [0,0,0]
var grammh3 = [0,0,0]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Node2D/Panelkuklos.hide()
	$Node2D/PanelX.hide()
	$Node2D/Panelkuklos2.hide()
	$Node2D/PanelX2.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_0_0_pressed() -> void:
	if grammh1[0] == 0:
		if seira() == 1:
			$Node2D/Panelkuklos.show()
			grammh1[0] = 1
			checkwinner()
		else:
			$Node2D/PanelX.show()
			grammh1[0] = 2
			checkwinner()


func _on_button_0_1_pressed() -> void:
	if grammh1[1] == 0:
		if seira() == 1:
			$Node2D/Panelkuklos2.show()
			grammh1[1] = 1
			checkwinner()
		else:
			$Node2D/PanelX2.show()
			grammh1[1] = 2
			checkwinner()


func _on_button_0_2_pressed() -> void:
	if grammh1[2]== 0:
		if seira() == 1:
			$Node2D/Panelkuklos3.show()
			grammh1[2] = 1
			checkwinner()
		else:
			$Node2D/PanelX3.show()
			grammh1[2] = 2
			checkwinner()


func _on_button_1_0_pressed() -> void:
	if grammh2[0]== 0:
		if seira() == 1:
			$Node2D/Panelkuklos4.show()
			grammh2[0] = 1
			checkwinner()
		else:
			$Node2D/PanelX4.show()
			grammh2[0] = 2
			checkwinner()

func _on_button_1_1_pressed() -> void:
	if grammh2[1]== 0:
		if seira() == 1:
			$Node2D/Panelkuklos5.show()
			grammh2[1] = 1
			checkwinner()
		else:
			$Node2D/PanelX5.show()
			grammh2[1] = 2
			checkwinner()


func _on_button_1_2_pressed() -> void:
	if grammh2[2]== 0:
		if seira() == 1:
			$Node2D/Panelkuklos6.show()
			grammh2[2] = 1
			checkwinner()
		else:
			$Node2D/PanelX6.show()
			grammh2[2] = 2
			checkwinner()


func _on_button_1_3_pressed() -> void:
	if grammh3[0]== 0:
		if seira() == 1:
			$Node2D/Panelkuklos7.show()
			grammh3[0] = 1
			checkwinner()
		else:
			$Node2D/PanelX7.show()
			grammh3[0] = 2
			checkwinner()


func _on_button_1_4_pressed() -> void:
	if grammh3[1]== 0:
		if seira() == 1:
			$Node2D/Panelkuklos8.show()
			grammh3[1] = 1
			checkwinner()
		else:
			$Node2D/PanelX8.show()
			grammh3[1] = 2
			checkwinner()


func _on_button_1_5_pressed() -> void:
	if grammh3[2]== 0:
		if seira() == 1:
			$Node2D/Panelkuklos9.show()
			grammh3[2] = 1
			checkwinner()
		else:
			$Node2D/PanelX9.show()
			grammh3[2] = 2
			checkwinner()


func seira() -> int:
	count=0
	for i in range(3):
		if grammh1[i]==1:
			count= count + 1
		if grammh1[i]==2:
			count= count+1
		if grammh2[i]==1:
			count= count + 1
		if grammh2[i]==2:
			count= count+1
		if grammh3[i]==1:
			count= count + 1
		if grammh3[i]==2:
			count= count+1
	if count%2==0:
		return 2
		pass
	return 1
	pass


func checkwinner() -> void:
	winner=0
	if grammh1[0]==grammh1[1] and grammh1[2]==grammh1[0]:
		winner=grammh1[0]
	if grammh2[0]==grammh2[1] and grammh2[2]==grammh2[0]:
		winner=grammh2[0]
	if grammh3[0]==grammh3[1] and grammh3[2]==grammh3[0]:
		winner=grammh3[0]


	if grammh1[0]==grammh2[1] and grammh3[2]==grammh1[0]:
		winner=grammh1[0]
	if grammh1[2]==grammh2[1] and grammh3[0]==grammh1[2]:
		winner=grammh1[2]


	if grammh1[0]==grammh2[0] and grammh3[0]==grammh1[0]:
		winner=grammh1[0]
	if grammh1[1]==grammh2[1] and grammh3[1]==grammh1[1]:
		winner=grammh1[1]
	if grammh1[2]==grammh2[2] and grammh3[2]==grammh1[2]:
		winner=grammh1[2]
		
	if winner==1:
		get_tree().change_scene_to_file("res://coop/tictactoe/winner.tscn")
	if winner==2:
		get_tree().change_scene_to_file("res://coop/tictactoe/winner.tscn")
	if winner==0:
		return
