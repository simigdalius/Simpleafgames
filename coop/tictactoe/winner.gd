extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Panel/Label.hide()
	$Panel/Label2.hide()
	$Panel/Label3.hide()
	if Global.ntom ==1:
		$Panel/Label.show()
	if Global.ntom == 2:
		$Panel/Label2.show()
	if Global.ntom ==0:
		$Panel/Label3.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$Panel/Label.hide()
	$Panel/Label2.hide()
	$Panel/Label3.hide()
	get_tree().change_scene_to_file("res://coop/tictactoe/tictactoe.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://ui/control.tscn")
