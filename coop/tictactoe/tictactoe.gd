extends Node2D

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
	if Global.seira==0:
		if grammh1[0]==0:
			$Node2D/Panelkuklos.show()
			Global.seira=1
	if Global.seira==1:
		if grammh1[0]==0:
			$Node2D/PanelX.show()
			Global.seira=0


func _on_button_0_1_pressed() -> void:
	if Global.seira==0:
		if grammh1[1]==0:
			$Node2D/Panelkuklos2.show()
			Global.seira=1
	if Global.seira==1:
		if grammh1[1]==0:
			$Node2D/PanelX2.show()
			Global.seira=0


func _on_button_0_2_pressed() -> void:
	pass # Replace with function body.


func _on_button_1_0_pressed() -> void:
	pass # Replace with function body.
